%{
#include "asm.h"
#include "ast.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "hash.h"

extern int yylex();
void yyerror(void *s);

int ehFuncOuArray = -1, ptrCont = 0, paramCont = 0;

void **hashGlobal = NULL, **hashAtual = NULL;
Funcao *listaFunc = NULL;
Programa *AST = NULL;

%}

%union {
    Programa *prog;
    Funcao *func;
    Dimensao *dim;
    Expressao *expr;
    Comando *cmd;
    void *param;
    void *posfixa;
    int sinalAux;
    struct {
        char *valor;
        int tipo;
        int linha;
        int coluna;
    } token;
}

%token MyEOF
%token <token> GLOBAL
%token <token> VARIABLE
%token <token> CONSTANT
%token <token> PARAMETER
%token <token> VALUE
%token <token> RETURN_TYPE
%token <token> TYPE
%token <token> VOID
%token <token> INT
%token <token> CHAR
%token <token> FUNCTION
%token <token> END_FUNCTION
%token <token> RETURN
%token <token> DO_WHILE
%token <token> WHILE
%token <token> FOR
%token <token> IF
%token <token> PRINTF
%token <token> SCANF
%token <token> EXIT
%token <token> PLUS
%token <token> MINUS
%token <token> MULTIPLY
%token <token> DIVIDE
%token <token> REMAINDER
%token <token> INC
%token <token> DEC
%token <token> ADD_ASSIGN
%token <token> MINUS_ASSIGN
%token <token> ASSIGN
%token <token> EQUAL
%token <token> NOT_EQUAL
%token <token> LESS_THAN
%token <token> LESS_EQUAL
%token <token> GREATER_THAN
%token <token> GREATER_EQUAL
%token <token> BITWISE_AND
%token <token> BITWISE_OR
%token <token> BITWISE_XOR
%token <token> BITWISE_NOT
%token <token> LOGICAL_AND
%token <token> LOGICAL_OR
%token <token> NOT
%token <token> TERNARY_CONDITIONAL
%token <token> COLON
%token <token> R_SHIFT
%token <token> L_SHIFT
%token <token> L_PAREN
%token <token> R_PAREN
%token <token> L_SQUARE_BRACKET
%token <token> R_SQUARE_BRACKET
%token <token> COMMA
%token <token> SEMICOLON
%token <token> NUM_INT
%token <token> STRING
%token <token> CHARACTER
%token <token> ID

%type <sinalAux> Sinal 
%type <dim> ChecarArray
%type <expr> Expressao 
%type <expr> ExpressaoBinaria 
%type <expr> ExpressaoTernaria 
%type <expr> ExpressaoUnaria
%type <token> Ops
%type <expr> Primaria
%type <posfixa> PosFixa
%type <dim> ChamadaArray
%type <param> ChamadaFuncao
%type <param> ExpressaoParam
%type <token> TipoVar
%type <param> Param
%type <cmd> ListaComandos
%type <cmd> Comandos
%type <cmd> AuxElse
%type <expr> AuxReturn
%type <expr> AuxPrint
%type <token> SemiColunS
%type DeclaracoesLocais
%type Ptr

%start AstParse

%%

AstParse: Declaracoes MyEOF {
        Programa *ast = criarPrograma(hashGlobal, listaFunc, NULL);
        Funcao *aux = listaFunc;
        AST = ast;
        return 0;
    } ;

Declaracoes: DeclaraDefine Declaracoes { }
    | DeclaraVarGlobal Declaracoes { } 
    | DeclaraFuncao Declaracoes { } 
    | { } ;

DeclaraDefine: CONSTANT COLON ID VALUE COLON Sinal NUM_INT {
        int valor = atoi($7.valor);
        if($6 == MINUS){
            valor *= -1;
        }
        void *no = inserirHash(hashGlobal, $3.valor, INT, 0);
        setTipo(no, VAR);
        setEhConstante(no);
        setAtrib(no, valor); 
        setDefinicaoVariavelInt($3.valor, valor);
    } ;

Sinal : PLUS { $$ = PLUS; }
    | MINUS { $$ = MINUS; } ;
    | { $$ = PLUS; } ; 

DeclaraVarGlobal: GLOBAL VARIABLE COLON ID TYPE COLON TipoVar { ptrCont = 0; } Ptr ChecarArray {
        void *no = inserirHash(hashGlobal, $4.valor, $7.tipo, ptrCont);
        if(!$10){
            setTipo(no, VAR);
        }else{
            setTipo(no, VECTOR);
        }
        setDimen(no, $10);
        setEhGlobal(no);
    } ;

DeclaraFuncao: FUNCTION COLON ID { hashAtual = criarHash(); } RETURN_TYPE COLON TipoVar { ptrCont = 0; } Ptr { paramCont = 0; } Param DeclaracoesLocais ListaComandos END_FUNCTION {
        Funcao *func = criarFuncao(hashAtual, $7.tipo, ptrCont, $3.valor, $13, NULL);
        if(listaFunc){
            Funcao *aux = listaFunc;
            while(aux->prox){
                aux = aux->prox;
            }
            aux->prox = func;
        }else{
            listaFunc = func;
        }
        
        void *no = inserirHash(hashGlobal, $3.valor, $7.tipo, ptrCont);
        setTipo(no, FUNCTION);
        setQntParam(no, paramCont);
        setParam(no, $11);
        hashAtual = NULL;
    } ;

ChecarArray: L_SQUARE_BRACKET NUM_INT R_SQUARE_BRACKET ChecarArray {
        Dimensao *dim = criarDimensao(atoi($2.valor));
        dim->prox = $4;
        $$ = dim;
    }
    | { $$ = NULL; } ;

Expressao: ExpressaoBinaria { $$ = $1; }
    | ExpressaoTernaria { $$ = $1; }
    | ExpressaoUnaria { $$ = $1; } 
    | Primaria { $$ = $1; } 
    | ChamadaFuncao { $$ = $1; } ;

ExpressaoBinaria: Ops L_PAREN Expressao COMMA Expressao R_PAREN {
        Expressao *bop = criarExpressao(BOP, $1.tipo, $3, $5);
        $$ = bop;
    } ;

ExpressaoTernaria: TERNARY_CONDITIONAL L_PAREN Expressao COMMA Expressao COMMA Expressao {
        Expressao *ternaria = criarExpressao(TERNARY, TERNARY_CONDITIONAL, $5, $7);
        ternaria->condicaoTernaria = $3;
        $$ = ternaria;
    } ;

ExpressaoUnaria: Ops L_PAREN Expressao R_PAREN {
        Expressao *uop = criarExpressao(UOP, $1.tipo, $3, NULL);
        uop->preOuPos = 1;
        $$ = uop;
    } 
    | L_PAREN Expressao R_PAREN INC {
        Expressao *uop = criarExpressao(UOP, INC, $2, NULL);
        uop->preOuPos = 2;
        $$ = uop;
    } 
    | L_PAREN Expressao R_PAREN DEC {
        Expressao *uop = criarExpressao(UOP, DEC, $2, NULL);
        uop->preOuPos = 2;
        $$ = uop;
    } ;

Ops: PLUS { $$ = yylval.token; }
    | MINUS { $$ = yylval.token; }
    | MULTIPLY { $$ = yylval.token; }
    | DIVIDE { $$ = yylval.token; }
    | REMAINDER { $$ = yylval.token; } 
    | BITWISE_AND { $$ = yylval.token; }
    | BITWISE_OR { $$ = yylval.token; }
    | BITWISE_XOR { $$ = yylval.token; }
    | LOGICAL_AND { $$ = yylval.token; }
    | LOGICAL_OR { $$ = yylval.token; }
    | EQUAL { $$ = yylval.token; }
    | NOT_EQUAL { $$ = yylval.token; }
    | LESS_THAN { $$ = yylval.token; }
    | LESS_EQUAL { $$ = yylval.token; }
    | GREATER_THAN { $$ = yylval.token; }
    | GREATER_EQUAL { $$ = yylval.token; }
    | R_SHIFT { $$ = yylval.token; }
    | L_SHIFT { $$ = yylval.token; }
    | ASSIGN { $$ = yylval.token; }
    | ADD_ASSIGN { $$ = yylval.token; }
    | MINUS_ASSIGN { $$ = yylval.token; }
    | INC { $$ = yylval.token; }
    | DEC { $$ = yylval.token; }
    | NOT { $$ = yylval.token; }
    | BITWISE_NOT { $$ = yylval.token; } ; 

Primaria: NUM_INT {
        Expressao *expr = criarExpressao(PRIMARIA, INT, NULL, NULL);
        expr->atribuicao = atoi($1.valor);
        $$ = expr;
    }
    | CHARACTER {
        Expressao *expr = criarExpressao(PRIMARIA, CHAR, NULL, NULL);
        if($1.valor[1] == '\\'){

            if($1.valor[2] == 'n'){
                expr->atribuicao = '\n';
            }else if($1.valor[2] == 't'){
                expr->atribuicao = '\t';
            }else if($1.valor[2] == 'r'){
                expr->atribuicao = '\r';
            }else if($1.valor[2] == '0'){
                expr->atribuicao = '\0';
            }else if($1.valor[2] == '\\'){
                expr->atribuicao = '\\';
            }else if($1.valor[2] == '\''){
                expr->atribuicao = '\'';
            }else if($1.valor[2] == '\"'){
                expr->atribuicao == '\"';
            }
        }else{
            expr->atribuicao = $1.valor[1];
        }
        $$ = expr;
    }
    | STRING {
        Expressao *expr = criarExpressao(PRIMARIA, STRING, NULL, NULL);
        strcpy(expr->string, $1.valor);
        $$ = expr;
    }
    | ID PosFixa {
        Expressao *expr = criarExpressao(PRIMARIA, ID, NULL, NULL);
        strcpy(expr->identificador, $1.valor);
        if(ehFuncOuArray == 1){
            expr->tipo = ARRAY_CALL;
            setDimensaoExpressao(expr, ((Dimensao*)$2));
        
        }else if(ehFuncOuArray == 2){
            expr->tipo = FUNCTION_CALL;
            expr->param = (ExpParam*)$2;
        }
        ehFuncOuArray = -1;
        $$ = expr;
    } ;

PosFixa: ChamadaArray { ehFuncOuArray = 1; $$ = $1; }
    | ChamadaFuncao { ehFuncOuArray = 2; $$ = $1; }
    | { ehFuncOuArray = 0; $$ = NULL; }

ChamadaArray: L_SQUARE_BRACKET Expressao R_SQUARE_BRACKET {
        Dimensao *dim = criarDimensaoExpressao($2);
        $$ = dim;
    } ;

ChamadaFuncao: L_PAREN ExpressaoParam R_PAREN {
        $$ = $2;
    } ;

ExpressaoParam: Expressao ExpressaoParam {
        ExpParam *aux = criarExpressaoParametro($1, $2);
        $$ = aux;
    }
    | COMMA Expressao ExpressaoParam {
        ExpParam *aux = criarExpressaoParametro($2, $3);
        $$ = aux;
    }
    | { $$ = NULL; } ;

TipoVar: INT { $$ = yylval.token; }
    | CHAR { $$ = yylval.token; }
    | VOID { $$ = yylval.token; } ;

Param: PARAMETER COLON ID TYPE COLON TipoVar { ptrCont = 0; } Ptr ChecarArray Param {
        void *no = inserirHash(hashAtual, $3.valor, $6.tipo, ptrCont);
        paramCont++;
        setQntParam(no, paramCont);
        setRegSHash(no, paramCont-1);
        Param *param = criarParamH($6.tipo, $3.valor, ptrCont, $10);
        if (!$9){
            setTipo(no, VAR);
            param->tipoParam = VAR;
        }else{
            setTipo(no, VECTOR);
            param->tipoParam = VECTOR;
        }
        setDimen(no, $9);
        param->prox = $10;
        $$ = param;
    }
    | { $$ = NULL; } ;

DeclaracoesLocais: VARIABLE COLON ID TYPE COLON TipoVar { ptrCont = 0; } Ptr ChecarArray DeclaracoesLocais {
        void *no = inserirHash(hashAtual, $3.valor, $6.tipo, ptrCont);
        if (!$9){
            setTipo(no, VAR);
        }else{
            setTipo(no, VECTOR);
        }
        setDimen(no, $9);
    }
    | { } ; 

Ptr: MULTIPLY Ptr { ptrCont++; }
    | { } ;

ListaComandos: Comandos SemiColunS ListaComandos {       
        Comando *cmd = $1;
        while (cmd->prox != NULL){
            cmd = cmd->prox;
        }
        cmd->prox = $3;
        $$ = $1;
    }
    | { $$ = NULL; } ;

Comandos: IF L_PAREN Expressao COMMA Comandos AuxElse R_PAREN SemiColunS Comandos {
        Comando *cmd = criarSe($3, $5, $6, $9);
        $$ = cmd;
    }
    | DO_WHILE L_PAREN Comandos COMMA Expressao R_PAREN SemiColunS Comandos {
        Comando *cmd = criarFaçaEnquanto($5, $3, $8);
        $$ = cmd;
    }
    | WHILE L_PAREN Expressao COMMA Comandos R_PAREN SemiColunS Comandos {
        Comando *cmd = criarEnquanto($3, $5, $8);
        $$ = cmd;
    }
    | FOR L_PAREN Expressao COMMA Expressao COMMA Expressao COMMA Comandos R_PAREN SemiColunS Comandos {
        Comando *cmd = criarPara($3, $5, $7, $9, $12);
        $$ = cmd;
    }
    | PRINTF L_PAREN STRING AuxPrint R_PAREN SemiColunS Comandos {
        Comando *cmd = criarImprimir($3.valor, $4, $7);
        $$ = cmd;
    }
    | SCANF L_PAREN STRING COMMA BITWISE_AND L_PAREN ID R_PAREN R_PAREN SemiColunS Comandos {
        Comando *cmd = criarScan($3.valor, $7.valor, $11);
        $$ = cmd;
    }
    | RETURN L_PAREN AuxReturn R_PAREN Comandos {
        Comando *cmd = criarReturn($3, $5);
        $$ = cmd;
    }
    | EXIT L_PAREN Expressao R_PAREN Comandos {
        Comando *cmd = criarExit($3, $5);
        $$ = cmd;
    } 
    | Expressao SemiColunS Comandos {
        Comando *cmd = criarComandoExpressao($1, $3);
        $$ = cmd;
    } 
    | { $$ = NULL; };

AuxElse: COMMA Comandos { $$ = $2; }
    | { $$ = NULL; } ;

AuxPrint: COMMA Expressao AuxPrint {
        $2->proxExpr = $3;
        $$ = $2;
    }
    | { $$ = NULL; } ;

AuxReturn: Expressao { $$ = $1; }
    | { $$ = NULL; } ;

SemiColunS: SEMICOLON { }
    | { } ;

%%

void yyerror(void *s){
    printf("Erro na gramatica %d [ %s ]:%d:%d \n", yychar, yylval.token.valor, yylval.token.linha, yylval.token.coluna);
}

int main(int argc, char *argv[]){
    hashGlobal = criarHash();
    yyparse();

    if(AST){
        Programa *ast = (Programa*)AST;
        traverseAST(ast);
        imprimirExit();
    }else{
        printf("AST NULL\n");
        exit(1);
    }

    return 0;
}