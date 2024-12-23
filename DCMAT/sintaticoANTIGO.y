%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include "ast.h"
#include "hash.h"
#include "graphs_manager.h"

#define H_VIEW_LO -6.500000
#define H_VIEW_HI 6.500000
#define V_VIEW_LO -3.500000
#define V_VIEW_HI 3.500000
#define FLOAT_PRECISION 6
#define INTEGRAL_STEPS_VALUE 1000
#define DRAW_AXIS true
#define ERASE_PLOT true
#define CONNECT_DOTS_OP false

extern int yychar;
extern int yylex();
void yyerror(void *s);

float hv_lo = H_VIEW_LO, hv_hi = H_VIEW_HI, vv_lo = V_VIEW_LO, vv_hi = V_VIEW_HI, **minhaMat = NULL, **minhaMatAux = NULL;
int fp = FLOAT_PRECISION, isv = INTEGRAL_STEPS_VALUE, ehRpn = 0, ehPlot = 0, temFuncao = 0, temGrafico = 0, linhaMat = 0, colunaMat = 1, auxColunaMat = 1, linhaVolta = 0;
bool desenhar_eixos = DRAW_AXIS, excluir_plot = ERASE_PLOT, cdop = CONNECT_DOTS_OP;
void **minhaHT = NULL;
Expressao *minhaFuncao = NULL;

void mostrarConfig();
void resetarConfig();
void plotarGrafico(Expressao *expr);
float gaussDeterminante(float **a, int line);
float *gaussSistemaLinear(float **m, int line);
void mostrarSobre();

%}

%union {
    int op;
    char *valor;
    Expressao *expressao;
    ExpressaoResultado *resultado;
    Funcao *funcao;
}

%token <valor> PLUS
%token <valor> MINUS
%token <valor> MULTIPLY
%token <valor> DIVIDE
%token <valor> POWER
%token <valor> REMAINDER
%token <valor> ASSIGN
%token <valor> SEMICOLON
%token <valor> COMMA
%token <valor> COLON
%token <valor> COLON_ASSIGN
%token <valor> L_PAREN
%token <valor> R_PAREN
%token <valor> L_SQUARE_BRACKET
%token <valor> R_SQUARE_BRACKET
%token <valor> ABOUT
%token <valor> ABS
%token <valor> AXIS
%token <valor> CONNECT_DOTS
%token <valor> COS
%token <valor> DETERMINANT
%token <valor> ERASE
%token <valor> EULER
%token <valor> FLOAT
%token <valor> H_VIEW
%token <valor> INTEGRAL_STEPS
%token <valor> INTEGRATE
%token <valor> LINEAR_SYSTEM
%token <valor> MATRIX
%token <valor> OFF
%token <valor> ON
%token <valor> PI
%token <valor> PLOT
%token <valor> PRECISION
%token <valor> QUIT
%token <valor> RESET
%token <valor> RPN
%token <valor> SEN
%token <valor> SET
%token <valor> SETTINGS
%token <valor> SHOW
%token <valor> SOLVE
%token <valor> SUM
%token <valor> SYMBOLS
%token <valor> TAN
%token <valor> V_VIEW
%token <valor> VAR_X
%token <valor> ID
%token <valor> NUM_INT
%token <valor> NUM_FLOAT
%token EOL

%start S

%type <funcao> Funcao
%type <op> OpUnario
%type <op> OpMult
%type <valor> Token_Matrix_Id
%type <resultado> Expressao
%type <expressao> ExpressaoAditiva
%type <expressao> ExpressaoMultiplicativa
%type <expressao> ExpressaoUnaria
%type <expressao> ExpressaoPrimaria

%%

S: Comandos EOL{
    printf(">"); 
    return 0; 
}
    | Expressao EOL{
        if(temFuncao){
            temFuncao = 0;
            printf("\nThe x variable cannot be present on expressions.\n\n");
        }else{
            if($1){
                if($1->tipo == NUM_INT || $1->tipo == NUM_FLOAT){
                    printf("\n%.*f\n\n", fp, $1->r_float);
                }else if($1->tipo == MATRIX){
                    mostrarMatriz($1->matriz, $1->linha, $1->coluna, fp);
                }else if($1->tipo == ID){
                    
                }else{
                    printf("\nERROR: Invalid Expression\n\n");
                }
            }else{
                printf("\n\n");
            }
        }
        printf(">");
        return 0;   
    }
    | EOL{
        printf(">");
        return 0;
    } ;

Comandos: SHOW SETTINGS SEMICOLON{
    mostrarConfig();
} 
    | RESET SETTINGS SEMICOLON {
        resetarConfig();
    } 
    | SET H_VIEW Expressao COLON Expressao SEMICOLON{ 
        if($3->r_float >= $5->r_float){
            printf("\nERROR: h_view_lo must be less than h_view_hi\n\n");
            return 0;
        }else{
            hv_lo = $3->r_float;
            hv_hi = $5->r_float;
            desabilitarEixos(vv_lo, vv_hi, hv_lo, hv_hi);
        }
    }
    | SET V_VIEW Expressao COLON Expressao SEMICOLON{
        if($3->r_float >= $5->r_float){
            printf("\nERROR: v_view_lo must be less than v_view_hi\n\n");
            return 0;
        }else{
            vv_lo = $3->r_float;
            vv_hi = $5->r_float;
            desabilitarEixos(vv_lo, vv_hi, hv_lo, hv_hi);
        }
    }
    | SET AXIS ON SEMICOLON{
        desenhar_eixos = true;
    } 
    | SET AXIS OFF SEMICOLON{
        desenhar_eixos = false;
    }
    | PLOT SEMICOLON{
        if(!minhaFuncao || !temGrafico){
            printf("\nNo Function defined!\n\n");
            return 0;
        }
        plotarGrafico(minhaFuncao);
        temGrafico = 1;
        temFuncao = 0;
    }
    | PLOT L_PAREN ExpressaoAditiva R_PAREN SEMICOLON{
        if(!$3){
            printf("\n\n");
            return 0;
        }
        minhaFuncao = $3;
        temGrafico = 1;
        temFuncao = 0;
        plotarGrafico(minhaFuncao);
    }
    | SET ERASE PLOT OFF SEMICOLON{
        excluir_plot = false;
    }
    | SET ERASE PLOT ON SEMICOLON{
        excluir_plot = true;
    }
    | Token_Rpn ExpressaoAditiva R_PAREN SEMICOLON{
        ehRpn = 0;
        printf("\n\n");
    }
    | SET INTEGRAL_STEPS Expressao SEMICOLON{
        if((int) $3->r_float < 1){
            printf("\nERROR: integral_steps must be a positive non-zero integer\n\n");
            return 0;
        }else{
            isv = (int) $3->r_float;
        }
    }
    | INTEGRATE L_PAREN Expressao COLON Expressao COMMA ExpressaoAditiva R_PAREN SEMICOLON{
        if(!$3 || !$5){
            printf("\n\n");
            return 0;
        }

        if($3->r_float > $5->r_float){
            printf("\nERROR: lower limit must be smaller than upper limit\n\n");
            return 0;
        
        }else{
            float integral = 0, passo = ($5->r_float - $3->r_float) / isv;
            ExpressaoResultado *integrando = NULL;
            
            NoHash *xVar = getIdentificadorNo(minhaHT, "x");
            xVar->valorId = $3->r_float;

            for(int i = 0; i < isv; i++){
                integrando = avaliarExpressao($7, minhaHT);
                if (!integrando) {
                    printf("\n\n");
                    return 0;
                }
                integral += integrando->r_float;
                xVar->valorId += passo;
            }
            integral *= passo;
            printf("\n%.*f\n\n", fp, integral);
        }
    }
    | SUM L_PAREN ID COMMA Expressao COLON Expressao COMMA ExpressaoAditiva R_PAREN SEMICOLON{
        float sum = 0;
        inserirHash(minhaHT, $3, $5->r_float, NUM_FLOAT);
        ExpressaoResultado *summand = NULL;
        
        NoHash *no = getIdentificadorNo(minhaHT, $3);

        for(int i = (int) no->valorId; i <= (int) $7->r_float; i++){
            summand = avaliarExpressao($9, minhaHT);
            if(!summand){
                printf("\n\n");
                removerNo(minhaHT, $3);
                return 0;
            }
            sum += summand->r_float;
            no->valorId++;
        }
        printf("\n%.*f\n\n", fp, sum);
        removerNo(minhaHT, $3);
    } 
    | Token_Matrix ASSIGN L_SQUARE_BRACKET L_SQUARE_BRACKET Expressao Repet_Matrix R_SQUARE_BRACKET Repet_Dimen R_SQUARE_BRACKET SEMICOLON{
        if(auxColunaMat > colunaMat){
            colunaMat = auxColunaMat; 
        }
        if(linhaMat > MAX_MATRIX_SIZE || colunaMat > MAX_MATRIX_SIZE){
            printf("\nERROR: Matrix limits out of boundaries.\n\n");
            return 0;
        }
 
        minhaMat[0][colunaMat-1] = $5->r_float;

        NoHash *no = getIdentificadorNo(minhaHT, "matrix");
        no->linhaMatriz = linhaMat;
        no->colunaMatriz = colunaMat;
        fixMatriz(minhaMat, linhaMat, colunaMat);
    }
    | SHOW MATRIX SEMICOLON{
        NoHash *no = getIdentificadorNo(minhaHT, "matrix");
        mostrarMatriz(minhaMat, no->linhaMatriz, no->colunaMatriz, fp); 
    }
    | SOLVE DETERMINANT SEMICOLON{
        if(!minhaMat){
            printf("\nNo Matrix defined!\n\n");
            return 0;
        }
        NoHash *no = getIdentificadorNo(minhaHT, "matrix");
        if(no->linhaMatriz != no->colunaMatriz){
            printf("\nMatrix format incorrect!\n\n");
            return 0;
        }
        float det = gaussDeterminante(minhaMat, no->linhaMatriz);
        printf("\n%.*f\n\n", fp, det);
    }
    | SOLVE LINEAR_SYSTEM SEMICOLON{
        if (!minhaMat) {
            printf("\nNo Matrix defined!\n\n");
            return 0;
        }
        NoHash *no = getIdentificadorNo(minhaHT, "matrix");
        if(no->colunaMatriz != no->linhaMatriz + 1){
            printf("\nMatrix format incorrect!\n\n");
            return 0;
        }
        float *x = gaussSistemaLinear(minhaMat, linhaMat);
        if(x){
            printf("\nMatrix x:\n");
            for(int i = 0; i < linhaMat; i++){
                printf("\n%.*f ", fp, x[i]);
            }
            printf("\n\n");
        }
    }
    | ABOUT SEMICOLON{
        mostrarSobre();
    }
    | ID COLON_ASSIGN Expressao SEMICOLON{
        if($3){
            if($3->tipo == MATRIX){
                mostrarMatriz($3->matriz, $3->linha, $3->coluna, fp);
                inserirHash(minhaHT, $1, 0, MATRIX);
                NoHash *no = getIdentificadorNo(minhaHT, $1);
                no->matriz = $3->matriz;
                no->linhaMatriz = $3->linha;
                no->colunaMatriz = $3->coluna;
            }else{
                inserirHash(minhaHT, $1, $3->r_float, NUM_FLOAT);
                printf("\n%.*f\n\n", fp, $3->r_float);
            }
        }else{
            printf("\n\n");
        }
        return 0;
    }
    | Token_Matrix_Id Expressao Repet_Matrix R_SQUARE_BRACKET Repet_Dimen R_SQUARE_BRACKET SEMICOLON{
        if(auxColunaMat > colunaMat){
            colunaMat = auxColunaMat; 
        }
        if(linhaMat > MAX_MATRIX_SIZE || colunaMat > MAX_MATRIX_SIZE){
            printf("\nERROR: Matrix limits out of boundaries.\n\n");
            return 0;
        }
        minhaMat[0][colunaMat-1] = $2->r_float;

        NoHash *no = getIdentificadorNo(minhaHT, $1);
        no->linhaMatriz = linhaMat;
        no->colunaMatriz = colunaMat;
        fixMatriz(minhaMat, linhaMat, colunaMat);
        mostrarMatriz(minhaMat, no->linhaMatriz, no->colunaMatriz, fp);
        minhaMat = minhaMatAux;
    }
    | ID SEMICOLON{
        NoHash *no = getIdentificadorNo(minhaHT, $1);
        if(!no){
            printf("\nUndefined symbol\n\n");
            return 0;
        }
        if(no->tipoVar == NUM_FLOAT || no->tipoVar == NUM_INT){
            printf("\n%s = %.*f\n\n", no->varId, fp, no->valorId);
        }else if(no->tipoVar == MATRIX){
            mostrarMatriz(no->matriz, no->linhaMatriz, no->colunaMatriz, fp);
        }
        return 0;
    }
    | ID ASSIGN Expressao SEMICOLON{
        NoHash *no = getIdentificadorNo(minhaHT, $1);
        if(!no){
            printf("\nUndefined symbol [%s]\n\n", $1);
            return 0;
        }
        if(no->tipoVar == NUM_FLOAT || no->tipoVar == NUM_INT){
            printf("\n%s = %.*f\n\n", no->varId, fp, no->valorId);
        }else if(no->tipoVar == MATRIX){
            mostrarMatriz(no->matriz, no->linhaMatriz, no->colunaMatriz, fp);
        }
        return 0;
    }
    | SHOW SYMBOLS SEMICOLON{
        mostrarSimbolos(minhaHT);
        return 0;
    }
    | SET FLOAT PRECISION Expressao SEMICOLON{
        if((int) $4->r_float < 0 || (int) $4->r_float > 8){
            printf("\nERROR: float_precision must be from 0 to 8\n\n");
            return 0;
        } 
        fp = (int) $4->r_float; 
        return 0;
    }
    | SET CONNECT_DOTS ON SEMICOLON{
        cdop = true;
    }
    | SET CONNECT_DOTS OFF SEMICOLON{
        cdop = false;
    }
    | QUIT{
        freeHash(minhaHT);
        return QUIT;
    } ;

Token_Rpn: RPN L_PAREN{
        printf("\nExpression in RPN format:\n\n");
        ehRpn = 1;
    };

Token_Matrix: MATRIX{ 
        freeMatriz(minhaMat); 
        minhaMat = criarMatriz(); 
        auxColunaMat = 1;
        linhaMat = 0;
        colunaMat = 1;
    } ;

Token_Matrix_Id: ID COLON_ASSIGN L_SQUARE_BRACKET L_SQUARE_BRACKET{
        minhaMatAux = minhaMat;
        float **matriz = criarMatriz();
        inserirHash(minhaHT, $1, 0, MATRIX);
        NoHash *no = getIdentificadorNo(minhaHT, $1);
        no->matriz = matriz;
        auxColunaMat = 1;
        linhaMat = 0;
        colunaMat = 1;
        minhaMat = matriz;
        $$ = $1;
    };

Repet_Matrix: COMMA Expressao Repet_Matrix{
        auxColunaMat++;
        if(auxColunaMat > colunaMat){
            colunaMat = auxColunaMat; 
        }
        minhaMat[linhaMat-1][auxColunaMat-2] = $2->r_float;
    }
    | {
        linhaMat++;
        auxColunaMat = 1;
    } ;

Repet_Dimen: COMMA L_SQUARE_BRACKET Expressao Repet_Matrix R_SQUARE_BRACKET Repet_Dimen{
        minhaMat[linhaVolta][colunaMat-1] = $3->r_float;
        linhaVolta--;
    }
    | {
        linhaVolta = linhaMat - 1;
    } ;

Funcao: SEN L_PAREN ExpressaoAditiva R_PAREN{
        if(ehRpn){
            printf("SEN ");
        }
    
        Funcao *funcao = criarFuncao(SEN, $3);
        $$ = funcao;
    }
    | COS L_PAREN ExpressaoAditiva R_PAREN{
        if(ehRpn){
            printf("COS ");
        }

        Funcao *funcao = criarFuncao(COS, $3);
        $$ = funcao;
    }
    | TAN L_PAREN ExpressaoAditiva R_PAREN{
        if(ehRpn){
            printf("TAN ");
        }
        Funcao *funcao = criarFuncao(TAN, $3);
        $$ = funcao;
    }
    | ABS L_PAREN ExpressaoAditiva R_PAREN{
        if(ehRpn){
            printf("ABS ");
        }
        Funcao *funcao = criarFuncao(ABS, $3);
        $$ = funcao;
    } ;

OpUnario: PLUS{
    $$ = PLUS;
}
    | MINUS{
        $$ = MINUS;
    } ;

OpMult: MULTIPLY{
    $$ = MULTIPLY;
}
    | DIVIDE{
        $$ = DIVIDE;
    }
    | REMAINDER{
        $$ = REMAINDER;
    }
    | POWER{
        $$ = POWER;
    } ;

Expressao: ExpressaoAditiva{
        ExpressaoResultado *resultado = avaliarExpressao($1, minhaHT); 
        if(temFuncao){
            minhaFuncao = $1;
        }
        $$ = resultado;
    } ;

ExpressaoAditiva: ExpressaoMultiplicativa{
    $$ = $1;
}
    | ExpressaoAditiva OpUnario ExpressaoMultiplicativa{
        if(ehRpn){
            if ($2 == PLUS) {
                printf("+ ");
            } else if ($2 == MINUS) {
                printf("- ");
            }
        }
        Expressao *expressao = criarExpressao(ADITIVA, $2, NULL, $1, $3);
        $$ = expressao;
    } ;

ExpressaoMultiplicativa: ExpressaoUnaria{
    $$ = $1;
}
    | ExpressaoMultiplicativa OpMult ExpressaoUnaria{
        if(ehRpn){
            if ($2 == MULTIPLY) {
                printf("* ");
            } else if ($2 == DIVIDE) {
                printf("/ ");
            } else if ($2 == REMAINDER) {
                printf("%% ");
            } else if ($2 == POWER) {
                printf("^ ");
            }
        }
        Expressao *expr = criarExpressao(MULTIPLICATIVA, $2, NULL, $1, $3);
        $$ = expr;
    } ;

ExpressaoUnaria: ExpressaoPrimaria{
    $$ = $1;
}
    | OpUnario ExpressaoPrimaria{
        if(ehRpn){
            if ($1 == PLUS) {
                printf("+ ");
            } else if ($1 == MINUS) {
                printf("- ");
            }
        }
        Expressao *expressao = criarExpressao(UNARIA, $1, NULL, $2, NULL);
        $$ = expressao;
    } ;

ExpressaoPrimaria: ID{
        if(ehRpn){
            printf("%s ", $1);
        }
        Expressao *expressao = criarExpressao(PRIMARIA, ID, $1, NULL, NULL);
        $$ = expressao;
    }
    | VAR_X{
        if(ehRpn){
            printf("x ");
        }
        Expressao *expressao = criarExpressao(PRIMARIA, VAR_X, "x", NULL, NULL);
        temFuncao = 1;
        $$ = expressao;
    }
    | NUM_INT{
        if(ehRpn){
            printf("%.*f ", fp, atof($1));
        }
        Expressao *expressao = criarExpressao(PRIMARIA, NUM_INT, $1, NULL, NULL);
        $$ = expressao;
    }
    | NUM_FLOAT {
        if(ehRpn){
            printf("%.*f ", fp, atof($1));
        }
        Expressao *expressao = criarExpressao(PRIMARIA, NUM_FLOAT, $1, NULL, NULL);
        $$ = expressao;
    }    
    | PI{
        if(ehRpn){
            printf("%.*f ", fp, 3.14159265);
        }
        Expressao *expressao = criarExpressao(PRIMARIA, NUM_FLOAT, "3.14159265", NULL, NULL);
        $$ = expressao;
    }
    | EULER{
        if(ehRpn){
            printf("%.*f ", fp, 2.71828182);
        }
        Expressao *expressao = criarExpressao(PRIMARIA, NUM_FLOAT, "2.71828182", NULL, NULL);
        $$ = expressao;
    } 
    | L_PAREN ExpressaoAditiva R_PAREN{
        $$ = $2;
    } 
    | Funcao{
        Expressao *expressao = criarExpressao(PRIMARIA, FUNCTION, NULL, NULL, NULL);
        expressao->funcao = $1;
        $$ = expressao;
    } ;

%%

void yyerror(void *s){
    if(yychar == EOL){
        printf("\nSYNTAX ERROR: Incomplete Command\n\n>");
        return;
    }
    if(yychar != 0){
        printf("\nSYNTAX ERROR: [%s]\n\n", yylval.valor);
    }
}

void mostrarConfig(){
    printf("\nh_view_lo: %.6f\n", hv_lo);
    printf("h_view_hi: %.6f\n", hv_hi);
    printf("v_view_lo: %.6f\n", vv_lo);
    printf("v_view_hi: %.6f\n", vv_hi);
    printf("float_precision: %d\n", fp);
    printf("integral_steps_value: %d\n", isv);
    if(desenhar_eixos){
        printf("\nDraw Axis: ON\n");
    }else{
        printf("\nDraw Axis: OFF\n");
    }
    if(excluir_plot){
        printf("Erase Plot: ON\n");
    }else{
        printf("Erase Plot: OFF\n");
    }
    if(cdop){
        printf("Connect Dots: ON\n");
    }else{
        printf("Connect Dots: OFF\n\n");
    }
}

void resetarConfig(){
    hv_lo = H_VIEW_LO;
    hv_hi = H_VIEW_HI;
    vv_lo = V_VIEW_LO;
    vv_hi = V_VIEW_HI;
    fp = FLOAT_PRECISION;
    isv = INTEGRAL_STEPS_VALUE;
    desenhar_eixos = DRAW_AXIS;
    excluir_plot = ERASE_PLOT;
    cdop = CONNECT_DOTS_OP;
}

void plotarGrafico(Expressao *expressao){
    if(excluir_plot){
        desabilitarEixos(vv_lo, vv_hi, hv_lo, hv_hi);
    }
    float passoX = (hv_hi - hv_lo) / (float) (TAM_EIXO_X + 1);

    NoHash *xVar = getIdentificadorNo(minhaHT, "x");
    xVar->valorId = hv_lo;

    ehPlot = 1;
    ExpressaoResultado *resultado = NULL;
    for(int i = 0; i < TAM_EIXO_X + 1; i++){
        resultado = avaliarExpressao(expressao, minhaHT);
        if(!resultado){
            printf("\n\n");
            return;
        }
        float xValor = xVar->valorId;
        float yValor = resultado->r_float;
        inserirPonto(i, xValor, yValor, hv_lo, hv_hi, vv_lo, vv_hi);
        xVar->valorId += passoX;
    }
    ehPlot = 0;
    if(resultado){
        desenharEixos(desenhar_eixos);
    }
}

void swap(float *a, float *b){
    float aux = *a;
    *a = *b;
    *b = aux;
}

float gaussDeterminante(float **a, int linha){
    int i, j, j1, j2;
    float determinante = 1, temp[linha][linha];

    for(i = 0; i < linha; i++){
        for(j = 0; j < linha; j++){
            temp[i][j] = a[i][j];
        }
    }

    for(j = 0; j < linha; j++){
        if(temp[j][j] == 0){
            for(i = j + 1; i < linha; i++){
                if(temp[i][j] != 0){
                    break;
                }
            }

            if(i == linha){
                return 0;
            }

            for(j1 = j; j1 < linha; j1++){
                swap(&temp[j][j1], &temp[i][j1]);
            }
            determinante *= -1;
        }

        determinante *= temp[j][j];

        for(i = j + 1; i < linha; i++){
            for(j1 = linha - 1; j1 >= j; j1--){
                temp[i][j1] -= temp[j][j1] * temp[i][j] / temp[j][j];
            }
        }
    }
    return determinante;
}

float *gaussSistemaLinear(float **m, int linha){
    float a[linha][linha + 1];
    for(int i = 0; i < linha; i++){
        for(int j = 0; j < linha + 1; j++){
            a[i][j] = m[i][j];
        }
    }

    for(int i = 0; i < linha - 1; i++){
        for(int j = i + 1; j < linha; j++){
            if(a[i][i] == 0){
                for(int k = i + 1; k < linha; k++){
                    if(a[k][i] != 0){
                        for(int l = i; l < linha; l++){
                            swap(&a[i][l], &a[k][l]);
                        }
                        break;
                    }
                }
            }

            float pivo = a[i][i], m = a[j][i] / pivo;
            for(int k = 0; k < linha + 1; k++){
                a[j][k] = a[j][k] - m * a[i][k];
            }
        }
    }

    for(int i = 0; i < linha; i++){
        int j;
        for(j = 0; j < linha; j++){
            if(a[i][j] != 0){
                break;
            }
        }

        if(j == linha && a[i][linha] != 0){
            printf("\nSI - The Linear System has no solution\n\n");
            return NULL;
        }else if (j == linha){
            printf("\nSPI - The Linear System has infinitely many solutions\n\n");
            return NULL;
        }
    }

    float *x = calloc(linha, sizeof(float));
    for(int i = linha - 1; i >= 0; i--){
        x[i] = a[i][linha];
        for(int j = i + 1; j < linha; j++){
            x[i] = x[i] - a[i][j] * x[j];
        }
        x[i] = x[i] / a[i][i];
    }
    return x;
}

void mostrarSobre(){
    printf("\n+-------------------------------------------------------+\n");
    printf("|                                                       |\n");
    printf("|                     202200560378                      |\n");
    printf("|             Luiz Henrique Botega Beraldi              |\n");
    printf("|                                                       |\n");
    printf("+-------------------------------------------------------+\n\n");
}   

int main(int argc, char *argv[]){
    minhaHT = criarHash();
    habilitarEixos(vv_lo, vv_hi, hv_lo, hv_hi);
    printf(">");
    while(true){
        if(yyparse() == QUIT || yychar == 0){
            break;
        }
    }
    return 0;
}