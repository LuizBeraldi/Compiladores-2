#include "expressao.h"
#include "sintatico.tab.h"

extern int ehPlot;
int ehFuncao = 0;

Expressao *criarExpressao(int tipo, int op, char *s, Expressao *esq, Expressao *dir) {
    Expressao *expressao = calloc(1, sizeof(Expressao));
    expressao->tipo = tipo;
    expressao->operador= op;
    expressao->e_string = s;
    expressao->esq = esq;
    expressao->dir = dir;

    return expressao;
}

ExpressaoResultado *criarExpressaoResultado(int tipo, float r_float, char *r_string) {
    ExpressaoResultado *resultado = calloc(1, sizeof(ExpressaoResultado));
    resultado->tipo = tipo;
    resultado->r_float = r_float;
    resultado->r_string = r_string;

    return resultado;
}

Funcao *criarFuncao(int tipo, Expressao *expressao) {
    Funcao *funcao = calloc(1, sizeof(Funcao));
    funcao->tipo = tipo;
    funcao->expressao = expressao;

    return funcao;
}

ExpressaoResultado *avaliarExpressao(Expressao *expressao, void **hash){
    if(!expressao){
        return NULL;
    }

    ExpressaoResultado *esq = NULL, *dir = NULL, *resultado = NULL;
    NoHash *NoHash = NULL;
    int tipoResultado = 0;

    if(expressao->tipo == PRIMARIA){
        if(expressao->operador== ID){
            NoHash = getIdentificadorNo(hash, expressao->e_string);

            if(!NoHash){
                printf("\nUndefined symbol [%s]", expressao->e_string);
                return NULL;
            }
            resultado = criarExpressaoResultado(NoHash->tipoVar, NoHash->valorId, NULL);

            if(NoHash->tipoVar == MATRIX){
                resultado->matriz = NoHash->matriz;
                resultado->linha = NoHash->linhaMatriz;
                resultado->coluna = NoHash->colunaMatriz;
            }
        }else if(expressao->operador== NUM_INT){
            resultado = criarExpressaoResultado(NUM_INT, atof(expressao->e_string), NULL);

        }else if(expressao->operador== NUM_FLOAT){
            resultado = criarExpressaoResultado(NUM_FLOAT, atof(expressao->e_string), NULL);

        }else if(expressao->operador== VAR_X){
            NoHash = getIdentificadorNo(hash, "x");
            resultado = criarExpressaoResultado(NUM_FLOAT, NoHash->valorId, NULL);
        }else if (expressao->operador== FUNCTION){
            resultado = avaliarFuncao(expressao->funcao, hash);
        }

        return resultado;
    }else if(expressao->tipo == ADITIVA){
        esq = avaliarExpressao(expressao->esq, hash);
        dir = avaliarExpressao(expressao->dir, hash);

        if(!esq || !dir){
            return NULL;
        }

        if(esq->tipo == MATRIX && dir->tipo != MATRIX){
            if(expressao->operador == PLUS){
                printf("\nIncorrect type for operator '+' - have MATRIX and FLOAT");
            }else{
                printf("\nIncorrect type for operator '-' - have MATRIX and FLOAT");
            }
            
            return NULL;
        }else if(esq->tipo != MATRIX && dir->tipo == MATRIX){
            if(expressao->operador == PLUS){
                printf("\nIncorrect type for operator '+' - have MATRIX and FLOAT");
            }else{
                printf("\nIncorrect type for operator '-' - have MATRIX and FLOAT");
            }
            return NULL;
        }else if(esq->tipo == MATRIX && dir->tipo == MATRIX){
            float **matrizTemp = somaMatrix(esq->matriz, dir->matriz, esq->linha, esq->coluna, dir->linha, dir->coluna, expressao->operador, hash);

            if(!matrizTemp){
                return NULL;
            }
            resultado = criarExpressaoResultado(MATRIX, 0, NULL);
            resultado->matriz = matrizTemp;
            resultado->linha = esq->linha;
            resultado->coluna = esq->coluna;

            return resultado;
        }

        tipoResultado = NUM_INT;

        if(esq->tipo == NUM_FLOAT || dir->tipo == NUM_FLOAT){
            tipoResultado = NUM_FLOAT;
        }

        if(expressao->operador== PLUS){
            resultado = criarExpressaoResultado(tipoResultado, esq->r_float + dir->r_float, NULL);

        }else if(expressao->operador== MINUS){
            resultado = criarExpressaoResultado(tipoResultado, esq->r_float - dir->r_float, NULL);
        }

        return resultado;
    }else if(expressao->tipo == MULTIPLICATIVA){
        esq = avaliarExpressao(expressao->esq, hash);
        dir = avaliarExpressao(expressao->dir, hash);

        if(!esq || !dir){
            return NULL;
        }
        tipoResultado = NUM_INT;

        if(esq->tipo == NUM_FLOAT || dir->tipo == NUM_FLOAT){
            tipoResultado = NUM_FLOAT;
        }

        if(expressao->operador== MULTIPLY){
            if(esq->tipo == MATRIX && dir->tipo == MATRIX){
                float **matrizTemp = multMatrix(esq->matriz, dir->matriz, esq->linha, esq->coluna, dir->linha, dir->coluna, hash);

                if(!matrizTemp){
                    return NULL;
                }
                resultado = criarExpressaoResultado(MATRIX, 0, NULL);
                resultado->matriz = matrizTemp;
                resultado->linha = esq->linha;
                resultado->coluna = dir->coluna;

                return resultado;

            }else if(esq->tipo == MATRIX && dir->tipo != MATRIX){
                float **matrizTemp = criarMatriz();

                for(int i = 0; i < esq->linha; i++){
                    for(int j = 0; j < esq->coluna; j++){
                        matrizTemp[i][j] = esq->matriz[i][j] * dir->r_float;
                    }
                }
                resultado = criarExpressaoResultado(MATRIX, 0, NULL);
                resultado->matriz = matrizTemp;
                resultado->linha = esq->linha;
                resultado->coluna = esq->coluna;

                return resultado;
            }else if(esq->tipo != MATRIX && dir->tipo == MATRIX){
                float **matrizTemp = criarMatriz();

                for(int i = 0; i < dir->linha; i++){
                    for(int j = 0; j < dir->coluna; j++){
                        matrizTemp[i][j] = dir->matriz[i][j] * esq->r_float;
                    }
                }
                resultado = criarExpressaoResultado(MATRIX, 0, NULL);
                resultado->matriz = matrizTemp;
                resultado->linha = dir->linha;
                resultado->coluna = dir->coluna;

                return resultado;
            }
            resultado = criarExpressaoResultado(tipoResultado, esq->r_float * dir->r_float, NULL);
        }else if(expressao->operador== DIVIDE){
            if(dir->r_float == 0){
                printf("\ninf");
                return NULL;
            }else{
                if((int)esq->r_float % (int)dir->r_float != 0){
                    tipoResultado = NUM_FLOAT;
                }
                resultado = criarExpressaoResultado(tipoResultado, esq->r_float / dir->r_float, NULL);
            }
        }else if(expressao->operador== REMAINDER && tipoResultado == NUM_INT){
            resultado = criarExpressaoResultado(NUM_INT, (int)esq->r_float % (int)dir->r_float, NULL);
        }else if(expressao->operador== POWER){
            resultado = criarExpressaoResultado(tipoResultado, pow(esq->r_float, dir->r_float), NULL);
        }
        return resultado;

    }else if(expressao->tipo == UNARIA){
        esq = avaliarExpressao(expressao->esq, hash);

        if(!esq){
            return NULL;
        }

        if(expressao->operador== PLUS){
            resultado = criarExpressaoResultado(esq->tipo, +esq->r_float, NULL);
        }else if(expressao->operador== MINUS){
            if(esq->tipo == MATRIX){
                float **matrizTemp = criarMatriz();

                for(int i = 0; i < esq->linha; i++){
                    for(int j = 0; j < esq->coluna; j++){
                        matrizTemp[i][j] = -esq->matriz[i][j];
                    }
                }
                resultado = criarExpressaoResultado(MATRIX, 0, NULL);
                resultado->matriz = matrizTemp;
                resultado->linha = esq->linha;
                resultado->coluna = esq->coluna;
            }else{
                resultado = criarExpressaoResultado(esq->tipo, -esq->r_float, NULL);
            }
        }

        return resultado;
    }else{
        printf("Erro ao avaliar expressao\n");
    }
    return NULL;
}

ExpressaoResultado *avaliarFuncao(Funcao *funcao, void **hash){
    if(!funcao){
        return NULL;
    }
    ehFuncao = 1;
    ExpressaoResultado *expressao = avaliarExpressao(funcao->expressao, hash);

    if(!expressao){
        return NULL;
    }

    if(expressao->tipo == MATRIX){
        if(funcao->tipo == SEN){
            printf("\nIncorrect type for operator 'SEN' - have MATRIX");
        }else if(funcao->tipo == COS){
            printf("\nIncorrect type for operator 'COS' - have MATRIX");
        }else if(funcao->tipo == TAN){
            printf("\nIncorrect type for operator 'TAN' - have MATRIX");
        }else{
            printf("\nIncorrect type for operator 'ABS' - have MATRIX");
        }
        
        return NULL;
    }

    if(funcao->tipo == SEN){
        ehFuncao = 0;
        return criarExpressaoResultado(NUM_FLOAT, sin(expressao->r_float), NULL);
    }else if(funcao->tipo == COS){
        ehFuncao = 0;
        return criarExpressaoResultado(NUM_FLOAT, cos(expressao->r_float), NULL);
    }else if(funcao->tipo == TAN){
        ehFuncao = 0;
        return criarExpressaoResultado(NUM_FLOAT, tan(expressao->r_float), NULL);
    }else if(funcao->tipo == ABS){
        ehFuncao = 0;
        return criarExpressaoResultado(NUM_FLOAT, fabs(expressao->r_float), NULL);
    }else{
        ehFuncao = 0;
        printf("Erro ao avaliar funcao\n");
    }
    return NULL;
}

float **somaMatrix(float **a, float **b, int aLin, int aCol, int bLin, int bCol, int op, void **hash){
    if(!a || !b){
        return NULL;
    }

    if(aLin != bLin || aCol != bCol){
        if(op == PLUS){
            printf("\nIncorrect dimensions for operator '+' - have MATRIX [%d][%d] and MATRIX [%d][%d]", aLin, aCol, bLin, bCol);
        }else{
            printf("\nIncorrect dimensions for operator '-' - have MATRIX [%d][%d] and MATRIX [%d][%d]", aLin, aCol, bLin, bCol);
        }
        
        return NULL;
    }
    float **m = criarMatriz();

    for(int i = 0; i < aLin; i++){
        for(int j = 0; j < aCol; j++){
            if(op == PLUS){
                m[i][j] = a[i][j] + b[i][j];
            }else{
                m[i][j] = a[i][j] - b[i][j];
            }
        }
    }

    return m;
}

float **multMatrix(float **a, float **b, int aLin, int aCol, int bLin, int bCol, void **hash){
    if(!a || !b){
        return NULL;
    }

    if(aCol != bLin){
        printf("\nIncorrect dimensions for operator '*' - have MATRIX [%d][%d] and MATRIX [%d][%d]", aLin, aCol, bLin, bCol);
        return NULL;
    }

    float **m = criarMatriz(), soma = 0;

    for(int j = 0; j < aLin; j++){
        for(int n = 0; n < bCol; n++){
            for(int i = 0; i < aCol; i++){
                soma = soma + a[j][i] * b[i][n];
            }
            m[j][n] = soma;
            soma = 0;
        }
    }

    return m;
}