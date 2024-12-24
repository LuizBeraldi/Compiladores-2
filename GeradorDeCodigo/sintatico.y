%{
#include "asm.h"
#include "ast.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "hash.h"

extern int yylex();
void yyerror(void *s);

int isFuncOrArray = -1;
int pointerCount = 0;
int paramCount = 0;

void **globalHash = NULL;
void **currentHash = NULL;

Funcao *functionList = NULL;

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
        int type;
        int line;
        int col;
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
%type <dim> ArrayCheck
%type <expr> Expression 
%type <expr> BinaryExpr 
%type <expr> TernaryExpr 
%type <expr> UnaryExpr
%type <token> Ops
%type <expr> Primaria
%type <posfixa> PosFixa
%type <dim> ArrayCall
%type <param> FunctionCall
%type <param> ParamExpression
%type <token> VarType
%type <param> Parameters
%type <cmd> ListaComandos
%type <cmd> Comandos
%type <cmd> AuxElse
%type <expr> AuxReturn
%type <expr> AuxPrint
%type <token> SemicolonDeSchrodinger
%type DeclaracoesLocais
%type Pointers

%start AstParse

%%

AstParse: Declaracoes MyEOF {
        Programa *ast = criarPrograma(globalHash, functionList, NULL);
        Funcao *aux = functionList;
        AST = ast;
        return 0;
    } ;

Declaracoes: DeclaraDefine Declaracoes { }
    | DeclaraVarGlobal Declaracoes { } 
    | DeclaraFuncao Declaracoes { } 
    | { } ;

DeclaraDefine: CONSTANT COLON ID VALUE COLON Sinal NUM_INT {
        int valor = atoi($7.valor);
        if ($6 == MINUS) {
            valor *= -1;
        }
        void *node = inserirHash(globalHash, $3.valor, INT, 0);
        setTipo(node, VAR);
        setEhConstante(node);
        setAtrib(node, valor); 
        setDefinicaoVariavelInt($3.valor, valor);
    } ;

Sinal : PLUS { $$ = PLUS; }
    | MINUS { $$ = MINUS; } ;
    | { $$ = PLUS; } ; 

DeclaraVarGlobal: GLOBAL VARIABLE COLON ID TYPE COLON VarType { pointerCount = 0; } Pointers ArrayCheck {
        void *node = inserirHash(globalHash, $4.valor, $7.type, pointerCount);
        if (!$10) {
            setTipo(node, VAR);
        } else {
            setTipo(node, VECTOR);
        }
        setDimen(node, $10);
        setEhGlobal(node);
    } ;

DeclaraFuncao: FUNCTION COLON ID { currentHash = criarHash(); } RETURN_TYPE COLON VarType { pointerCount = 0; } Pointers { paramCount = 0; } Parameters DeclaracoesLocais ListaComandos END_FUNCTION {
        Funcao *func = criarFuncao(currentHash, $7.type, pointerCount, $3.valor, $13, NULL);
        if (functionList) {
            Funcao *aux = functionList;
            while (aux->prox) {
                aux = aux->prox;
            }
            aux->prox = func;
        } else {
            functionList = func;
        }
        
        void *node = inserirHash(globalHash, $3.valor, $7.type, pointerCount);
        setTipo(node, FUNCTION);
        setQntParam(node, paramCount);
        setParam(node, $11);
        currentHash = NULL;
    } ;

ArrayCheck: L_SQUARE_BRACKET NUM_INT R_SQUARE_BRACKET ArrayCheck {
        Dimensao *dim = criarDimensao(atoi($2.valor));
        dim->prox = $4;
        $$ = dim;
    }
    | { $$ = NULL; } ;

Expression: BinaryExpr { $$ = $1; }
    | TernaryExpr { $$ = $1; }
    | UnaryExpr { $$ = $1; } 
    | Primaria { $$ = $1; } 
    | FunctionCall { $$ = $1; } ;

BinaryExpr: Ops L_PAREN Expression COMMA Expression R_PAREN {
        Expressao *bop = criarExpressao(BOP, $1.type, $3, $5);
        $$ = bop;
    } ;

TernaryExpr: TERNARY_CONDITIONAL L_PAREN Expression COMMA Expression COMMA Expression {
        Expressao *ternary = criarExpressao(TERNARY, TERNARY_CONDITIONAL, $5, $7);
        ternary->condicaoTernaria = $3;
        $$ = ternary;
    } ;

UnaryExpr: Ops L_PAREN Expression R_PAREN {
        Expressao *uop = criarExpressao(UOP, $1.type, $3, NULL);
        uop->preOuPos = 1;
        $$ = uop;
    } 
    | L_PAREN Expression R_PAREN INC {
        Expressao *uop = criarExpressao(UOP, INC, $2, NULL);
        uop->preOuPos = 2;
        $$ = uop;
    } 
    | L_PAREN Expression R_PAREN DEC {
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
        if ($1.valor[1] == '\\') {
            switch ($1.valor[2]) {
                case 'n':
                    expr->atribuicao = '\n';
                    break;
                case 't':
                    expr->atribuicao = '\t';
                    break;
                case 'r':
                    expr->atribuicao = '\r';
                    break;
                case '0':
                    expr->atribuicao = '\0';
                    break;
                case '\\':
                    expr->atribuicao = '\\';
                    break;
                case '\'':
                    expr->atribuicao = '\'';
                    break;
                case '\"':
                    expr->atribuicao = '\"';
                    break;
            }
        } else {
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
        if (isFuncOrArray == 1) {
            expr->tipo = ARRAY_CALL;
            setDimensaoExpressao(expr, ((Dimensao*)$2));
        
        } else if (isFuncOrArray == 2) {
            expr->tipo = FUNCTION_CALL;
            expr->param = (ExpParam*)$2;
        }
        isFuncOrArray = -1;
        $$ = expr;
    } ;

PosFixa: ArrayCall { isFuncOrArray = 1; $$ = $1; }
    | FunctionCall { isFuncOrArray = 2; $$ = $1; }
    | { isFuncOrArray = 0; $$ = NULL; }

ArrayCall: L_SQUARE_BRACKET Expression R_SQUARE_BRACKET {
        Dimensao *dim = criarDimensaoExpressao($2);
        $$ = dim;
    } ;

FunctionCall: L_PAREN ParamExpression R_PAREN {
        $$ = $2;
    } ;

ParamExpression: Expression ParamExpression {
        ExpParam *aux = criarExpressaoParametro($1, $2);
        $$ = aux;
    }
    | COMMA Expression ParamExpression {
        ExpParam *aux = criarExpressaoParametro($2, $3);
        $$ = aux;
    }
    | { $$ = NULL; } ;

VarType: INT { $$ = yylval.token; }
    | CHAR { $$ = yylval.token; }
    | VOID { $$ = yylval.token; } ;

Parameters: PARAMETER COLON ID TYPE COLON VarType { pointerCount = 0; } Pointers ArrayCheck Parameters {
        void *node = inserirHash(currentHash, $3.valor, $6.type, pointerCount);
        paramCount++;
        setQntParam(node, paramCount);
        setRegSHash(node, paramCount-1);
        Param *param = criarParamH($6.type, $3.valor, pointerCount, $10);
        if (!$9) {
            setTipo(node, VAR);
            param->tipoParam = VAR;
        } else {
            setTipo(node, VECTOR);
            param->tipoParam = VECTOR;
        }
        setDimen(node, $9);
        param->prox = $10;
        $$ = param;
    }
    | { $$ = NULL; } ;

DeclaracoesLocais: VARIABLE COLON ID TYPE COLON VarType { pointerCount = 0; } Pointers ArrayCheck DeclaracoesLocais {
        void *node = inserirHash(currentHash, $3.valor, $6.type, pointerCount);
        if (!$9) {
            setTipo(node, VAR);
        } else {
            setTipo(node, VECTOR);
        }
        setDimen(node, $9);
    }
    | { } ; 

Pointers: MULTIPLY Pointers { pointerCount++; }
    | { } ;

ListaComandos: Comandos SemicolonDeSchrodinger ListaComandos {       
        Comando *cmd = $1;
        while (cmd->prox != NULL) {
            cmd = cmd->prox;
        }
        cmd->prox = $3;
        $$ = $1;
    }
    | { $$ = NULL; } ;

Comandos: IF L_PAREN Expression COMMA Comandos AuxElse R_PAREN SemicolonDeSchrodinger Comandos {
        Comando *cmd = criarSe($3, $5, $6, $9);
        $$ = cmd;
    }
    | DO_WHILE L_PAREN Comandos COMMA Expression R_PAREN SemicolonDeSchrodinger Comandos {
        Comando *cmd = criarFaçaEnquanto($5, $3, $8);
        $$ = cmd;
    }
    | WHILE L_PAREN Expression COMMA Comandos R_PAREN SemicolonDeSchrodinger Comandos {
        Comando *cmd = criarEnquanto($3, $5, $8);
        $$ = cmd;
    }
    | FOR L_PAREN Expression COMMA Expression COMMA Expression COMMA Comandos R_PAREN SemicolonDeSchrodinger Comandos {
        Comando *cmd = criarPara($3, $5, $7, $9, $12);
        $$ = cmd;
    }
    | PRINTF L_PAREN STRING AuxPrint R_PAREN SemicolonDeSchrodinger Comandos {
        Comando *cmd = criarImprimir($3.valor, $4, $7);
        $$ = cmd;
    }
    | SCANF L_PAREN STRING COMMA BITWISE_AND L_PAREN ID R_PAREN R_PAREN SemicolonDeSchrodinger Comandos {
        Comando *cmd = criarScan($3.valor, $7.valor, $11);
        $$ = cmd;
    }
    | RETURN L_PAREN AuxReturn R_PAREN Comandos {
        Comando *cmd = criarReturn($3, $5);
        $$ = cmd;
    }
    | EXIT L_PAREN Expression R_PAREN Comandos {
        Comando *cmd = criarExit($3, $5);
        $$ = cmd;
    } 
    | Expression SemicolonDeSchrodinger Comandos {
        Comando *cmd = criarComandoExpressao($1, $3);
        $$ = cmd;
    } 
    | { $$ = NULL; };

AuxElse: COMMA Comandos { $$ = $2; }
    | { $$ = NULL; } ;

AuxPrint: COMMA Expression AuxPrint {
        $2->proxExpr = $3;
        $$ = $2;
    }
    | { $$ = NULL; } ;

AuxReturn: Expression { $$ = $1; }
    | { $$ = NULL; } ;

SemicolonDeSchrodinger: SEMICOLON { }
    | { } ;

%%

void yyerror(void *s) {
    printf("Erro na gramatica %d [ %s ]:%d:%d \n", yychar, yylval.token.valor, yylval.token.line, yylval.token.col);
}

int main(int argc, char *argv[]) {
    globalHash = criarHash();
    yyparse();

    if (AST) {
        Programa *ast = (Programa*)AST;
        traverseAST(ast);
        imprimirExit();
    } else {
        printf("AST NULL\n");
        exit(1);
    }
    return 0;
}