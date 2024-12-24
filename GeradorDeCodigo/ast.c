#include "ast.h"
#include <stdint.h>
#include "asm.h"
#include "hash.h"
#include "sintatico.tab.h"

//1287

int *regTsv = NULL, noAtri = 0;

Programa *criarPrograma(void **hash, void *listaFuncoes, void *main){
    Programa *novoProg = calloc(1, sizeof(Programa));
    novoProg->hashTable = hash;
    novoProg->listaFuncoes = listaFuncoes;
    novoProg->main = main;

    return novoProg;
}

Funcao *criarFuncao(void **hash, int retornaTipo, int ptr, char *nome, void *listaComando, void *prox){
    Funcao *novoFunc = calloc(1, sizeof(Funcao));
    novoFunc->hashTable = hash;
    novoFunc->retornaTipo = retornaTipo;
    novoFunc->ptr = ptr;
    novoFunc->nome = nome;
    novoFunc->listaComando = listaComando;
    novoFunc->prox = prox;

    return novoFunc;
}

ExpParam *criarExpressaoParametro(Expressao *exp, ExpParam *prox){
    ExpParam *novoExprParam = calloc(1, sizeof(ExpParam));
    novoExprParam->exp = exp;
    novoExprParam->prox = prox;

    return novoExprParam;
}

Expressao *criarExpressao(int tipo, int operador, void * esq, void *dir){
    Expressao *novaExpr = calloc(1, sizeof(Expressao));
    novaExpr->tipo = tipo;
    novaExpr->operador= operador;
    novaExpr->esq = esq;
    novaExpr->dir = dir;
    novaExpr->dimensao = NULL;
    novaExpr->condicaoTernaria = NULL;

    return novaExpr;
}

Dimensao *criarDimensao(int tam){
    Dimensao *novaDimensao = calloc(1, sizeof(Dimensao));
    novaDimensao->tam = tam;

    return novaDimensao;
}

int contDimensao(void *d){
    Dimensao *dimensao = d;

    if(!dimensao){
        return 0;
    }
    int cont = 1;
    Dimensao *aux = dimensao;

    while(aux->prox){
        cont++;
        aux = aux->prox;
    }

    return cont;
}

Dimensao *criarDimensaoExpressao(Expressao *exp){
    Dimensao *novaDimensao = calloc(1, sizeof(Dimensao));
    novaDimensao->exp = exp;

    return novaDimensao;
}

void setDimensaoExpressao(Expressao *expressao, Dimensao *dimensao){
    if(!expressao){
        return;
    }

    if(!expressao->dimensao){
        expressao->dimensao = dimensao;
    }else{
        Dimensao *aux = expressao->dimensao;
        while (aux->prox) aux = aux->prox;
        aux->prox = dimensao;
    }
}

Comando *criarSe(Expressao *condicao, void *entao, void *elseS, void *prox){
    Comando *novoSe = calloc(1, sizeof(Comando));
    novoSe->tipo = IF;
    novoSe->condicao = condicao;
    novoSe->entao = entao;
    novoSe->elseS = elseS;
    novoSe->prox = prox;

    return novoSe;
}

Comando *criarFaçaEnquanto(Expressao *condicao, void *entao, void *prox){
    Comando *novoFacaEnquanto = calloc(1, sizeof(Comando));
    novoFacaEnquanto->tipo = DO_WHILE;
    novoFacaEnquanto->condicao = condicao;
    novoFacaEnquanto->entao = entao;
    novoFacaEnquanto->prox = prox;

    return novoFacaEnquanto;
}

Comando *criarEnquanto(Expressao *condicao, void *entao, void *prox){
    Comando *novoEnquanto = calloc(1, sizeof(Comando));
    novoEnquanto->tipo = WHILE;
    novoEnquanto->condicao = condicao;
    novoEnquanto->entao = entao;
    novoEnquanto->prox = prox;

    return novoEnquanto;
}

Comando *criarPara(Expressao *ini, Expressao *condicao, Expressao *incrementa, void *entao, void *prox){
    Comando *novoPara = calloc(1, sizeof(Comando));
    novoPara->tipo = FOR;
    novoPara->ini = ini;
    novoPara->condicao = condicao;
    novoPara->incrimenta = incrementa;
    novoPara->entao = entao;
    novoPara->prox = prox;

    return novoPara;
}

Comando *criarImprimir(char *string, Expressao *imprimirAux, void *prox){
    Comando *novoImprimir = calloc(1, sizeof(Comando));
    novoImprimir->tipo = PRINTF;
    novoImprimir->string = string;
    novoImprimir->imprimirAux = imprimirAux;
    novoImprimir->prox = prox;

    return novoImprimir;
}

Comando *criarScan(char *string, char *identificador, void *prox){
    Comando *novoScan = calloc(1, sizeof(Comando));
    novoScan->tipo = SCANF;
    novoScan->string = string;
    novoScan->identificador = identificador;
    novoScan->prox = prox;

    return novoScan;
}

Comando *criarReturn(Expressao *expressao, void *prox){
    Comando *novoReturn = calloc(1, sizeof(Comando));
    novoReturn->tipo = RETURN;
    novoReturn->condicao = expressao;
    novoReturn->prox = prox;

    return novoReturn;
}

Comando *criarExit(Expressao *expressao, void *prox){
    Comando *novoExit = calloc(1, sizeof(Comando));
    novoExit->tipo = EXIT;
    novoExit->condicao = expressao;
    novoExit->prox = prox;

    return novoExit;
}

Comando *criarComandoExpressao(Expressao *expressao, void *prox){
    Comando *novoComando = calloc(1, sizeof(Comando));
    novoComando->tipo = LISTA_EXP_COMANDO;
    novoComando->condicao = expressao;
    novoComando->prox = prox;

    return novoComando;
}

ResultadoExpr *criarResultadoExpressao(int tipo, int ptr, int valor){
    ResultadoExpr *novoResultado = calloc(1, sizeof(ResultadoExpr));
    novoResultado->tipoVar = tipo;
    novoResultado->ptr = ptr;
    novoResultado->atribuicao = valor;
    novoResultado->tipoReg = -1;
    novoResultado->numReg = -1;

    return novoResultado;
}

/*ResultadoExpr *avaliarExpressao(Expressao *expressao, void **globalHash, void **localHash, Programa *programa) {
    if(!expressao){
        return NULL;
    }

    ResultadoExpr *esq = NULL, *dir = NULL, *resultado = NULL;

    HashNo *hashNo = NULL, *hashNoTemp = NULL, *NoAuxid = NULL;

    int tipoEsq, tipoDir, regEsq, regDir, regT, regS;

    switch (expressao->tipo) {
        case PRIMARIA:

            switch (expressao->operador) {
                case INT:
                case CHAR:
                    resultado = criarResultadoExpressao(expressao->tipo, expressao->ptr, expressao->atribuicao);
                    int regT = constante(resultado->atribuicao);
                    resultado->tipoReg = 0;
                    resultado->numReg = regT;
                    return resultado;
                    break;

                case STRING:
                    resultado = criarResultadoExpressao(STRING, 0, 0);
                    strcpy(resultado->str, expressao->string);
                    return resultado;
                    break;

                case ID:
                    hashNo = getIdentifierNode(localHash, expressao->identificador);
                    if (!hashNo) hashNo = getIdentifierNode(globalHash, expressao->identificador);
                    if (!hashNo) printf("Erro: Variável %s não declarada\n", expressao->identificador);

                    if (hashNo->tipoVar == VOID) {
                        resultado = criarResultadoExpressao(VOID, hashNo->ptr, hashNo->atribuicao);
                        if (hashNo->tipok == VECTOR) resultado->ptr = 1;
                        resultado->NoAuxid = hashNo;
                        if (hashNo->isConstant || hashNo->ehGlobal) {
                            if (!noAtri && hashNo->tipok != VECTOR) {
                                resultado->numReg = loadGlobalInt(hashNo->varId);
                                resultado->tipoReg = 0;
                            }
                        } else {
                            if (hashNo->ptr > 0) {
                                resultado->tipoReg = 1;
                                resultado->numReg = hashNo->regS;
                            }
                        }
                        return resultado;

                    } else if (hashNo->tipoVar == INT || (hashNo->tipoVar == CHAR && hashNo->ptr == 0)) {
                        resultado = criarResultadoExpressao(hashNo->tipoVar, hashNo->ptr, hashNo->atribuicao);
                        if (hashNo->tipok == VECTOR) resultado->ptr = 1;
                        resultado->NoAuxid = hashNo;
                        if (hashNo->isConstant || hashNo->ehGlobal) {
                            if (!noAtri && hashNo->tipok != VECTOR) {
                                resultado->numReg = loadGlobalInt(hashNo->varId);
                                resultado->tipoReg = 0;
                            }
                        } else {
                            resultado->tipoReg = 1;
                            resultado->numReg = hashNo->regS;
                        }
                        return resultado;
                        break;

                    } else if (hashNo->tipoVar == CHAR && hashNo->ptr == 1) {
                        resultado = criarResultadoExpressao(CHAR, 1, 0);
                        strcpy(resultado->str, expressao->string);
                        resultado->NoAuxid = hashNo;
                        resultado->tipoReg = 1;
                        resultado->numReg = hashNo->regS;
                        return resultado;
                        break;
                    }
                    break;

                default:
                    printf("Erro: Expressao primaria desconhecida\n");
                    break;
            }

        case BOP:
            if (expressao->esq->operador == ASSIGN) noAtri = 1;
            esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);
            if (expressao->esq->operador == ASSIGN) noAtri = 0;
            dir = avaliarExpressao(expressao->dir, globalHash, localHash, programa);

            tipoEsq = esq->tipoReg;
            regEsq = esq->numReg;
            tipoDir = dir->tipoReg;
            regDir = dir->numReg;

            switch (expressao->operador) {
                case ASSIGN:
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, dir->atribuicao);

                    if ((esq->tipoVar == INT || esq->tipoVar == VOID) && esq->ptr == 1 && dir->ptr == 1) {
                        int s = atribuicaoEndereco(esq->tipoReg, esq->numReg, ((HashNo *)esq->NoAuxid)->varId);
                        setSRegisterInHash(((HashNo *)esq->NoAuxid), s);
                        resultado->tipoReg = 1;
                        resultado->numReg = s;
                        return resultado;
                    }

                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }

                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        armazenarNoArray(esq->numReg, tipoDir, regDir);
                        resultado->tipoReg = 0;
                        regS = esq->numReg;

                    } else if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal) {
                        freeReg(esq->tipoReg, esq->numReg);
                        armazenarGlobalInt(tipoDir, regDir, ((HashNo *)esq->NoAuxid)->varId);
                        resultado->tipoReg = 0;

                    } else {
                        if (((HashNo *)esq->NoAuxid)->regS == -1) {
                            if (esq->tipoVar == CHAR && esq->ptr == 1) {
                                dir->str[strlen(dir->str) - 1] = '\0';
                                char aux[strlen(dir->str) - 1];
                                strcpy(aux, dir->str + 1);
                                for (int i = 0; i < strlen(dir->str); i++) {
                                    dir->str[i] = '\0';
                                }
                                strcpy(dir->str, aux);
                                regS = declararString(((HashNo *)esq->NoAuxid)->varId, dir->str);
                                resultado->tipoReg = 1;
                                resultado->numReg = regS;
                                ((HashNo *)esq->NoAuxid)->regS = regS;
                                strcpy(((HashNo *)esq->NoAuxid)->string, dir->str);

                            } else {
                                if (expressao->esq->tipo == UOP) {
                                    armazenadoNoEndereco(esq->tipoReg, esq->numReg, tipoDir, regDir);

                                } else {
                                    regS = atribuicao(tipoDir, regDir);
                                    ((HashNo *)esq->NoAuxid)->regS = regS;
                                }
                            }

                        } else {
                            if (esq->tipoVar == CHAR && esq->ptr == 1) {
                                resultado->tipoReg = 1;
                                resultado->numReg = ((HashNo *)esq->NoAuxid)->regS;
                                strcpy(((HashNo *)esq->NoAuxid)->string, dir->str);

                            } else {
                                if (expressao->esq->tipo == UOP) {
                                    armazenadoNoEndereco(esq->tipoReg, esq->numReg, tipoDir, regDir);

                                } else {
                                    regS = esq->numReg;
                                    atribuicaoParaReg(tipoDir, regDir, regS);
                                }
                            }
                        }
                        resultado->tipoReg = 1;
                    }
                    resultado->numReg = regS;
                    hashNoTemp = getIdentifierNode(localHash, expressao->identificador);
                    if (!hashNoTemp) hashNoTemp = getIdentifierNode(globalHash, expressao->identificador);
                    if (hashNoTemp) setAssign(hashNoTemp, resultado->atribuicao);
                    hashNoTemp = NULL;
                    return resultado;
                    break;

                case ADD_ASSIGN:
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao + dir->atribuicao);
                    regT = opeAritmeticas(esq->tipoReg, esq->numReg, dir->tipoReg, dir->numReg, "add");

                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal) {
                        freeReg(esq->tipoReg, esq->numReg);
                        armazenarGlobalInt(0, regT, ((HashNo *)esq->NoAuxid)->varId);
                        resultado->tipoReg = 0;
                        resultado->numReg = esq->numReg;

                    } else {
                        atribuicaoParaReg(0, regT, esq->numReg);
                        resultado->numReg = esq->numReg;
                        resultado->tipoReg = esq->tipoReg;
                    }
                    hashNoTemp = getIdentifierNode(localHash, expressao->identificador);
                    if (!hashNoTemp) hashNoTemp = getIdentifierNode(globalHash, expressao->identificador);
                    if (hashNoTemp) setAssign(hashNoTemp, resultado->atribuicao);
                    hashNoTemp = NULL;
                    return resultado;
                    break;

                case MINUS_ASSIGN:
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao - dir->atribuicao);
                    regT = opeAritmeticas(esq->tipoReg, esq->numReg, dir->tipoReg, dir->numReg, "sub");

                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal) {
                        freeReg(esq->tipoReg, esq->numReg);
                        armazenarGlobalInt(0, regT, ((HashNo *)esq->NoAuxid)->varId);
                        resultado->tipoReg = 0;
                        resultado->numReg = esq->numReg;

                    } else {
                        atribuicaoParaReg(0, regT, esq->numReg);
                        resultado->numReg = esq->numReg;
                        resultado->tipoReg = esq->tipoReg;
                    }
                    hashNoTemp = getIdentifierNode(localHash, expressao->esq->identificador);
                    if (!hashNoTemp) hashNoTemp = getIdentifierNode(globalHash, expressao->esq->identificador);
                    if (hashNoTemp) setAssign(hashNoTemp, resultado->atribuicao);
                    hashNoTemp = NULL;
                    return resultado;
                    break;

                case PLUS:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao + dir->atribuicao);
                    regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "add");
                    if (esq->tipoVar == CHAR && esq->ptr == 1) strcpy(resultado->str, ((HashNo *)esq->NoAuxid)->string + dir->atribuicao);
                    if (dir->tipoVar == CHAR && dir->ptr == 1) strcpy(resultado->str, ((HashNo *)dir->NoAuxid)->string + esq->atribuicao);
                    resultado->tipoReg = 0;
                    resultado->numReg = regT;
                    return resultado;
                    break;

                case MINUS:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao - dir->atribuicao);
                    int regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "sub");
                    resultado->tipoReg = 0;
                    resultado->numReg = regT;
                    return resultado;
                    break;

                case MULTIPLY:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao * dir->atribuicao);
                    regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "mul");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case DIVIDE:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao / dir->atribuicao);
                    regT = opDivisao(tipoEsq, regEsq, tipoDir, regDir, "mflo");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case REMAINDER:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao % dir->atribuicao);
                    regT = opDivisao(tipoEsq, regEsq, tipoDir, regDir, "mfhi");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case BITWISE_OR:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao | dir->atribuicao);
                    regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "or");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case BITWISE_AND:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao & dir->atribuicao);
                    regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "and");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case BITWISE_XOR:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao ^ dir->atribuicao);
                    regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "xor");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case LOGICAL_AND:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(INT, 0, esq->atribuicao && dir->atribuicao);
                    regT = eLogico(tipoEsq, regEsq, tipoDir, regDir, abs((int)((intptr_t)expressao)));
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case LOGICAL_OR:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(INT, 0, esq->atribuicao || dir->atribuicao);
                    regT = ouLogico(tipoEsq, regEsq, tipoDir, regDir, abs((int)((intptr_t)expressao)));
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case LESS_THAN:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(INT, 0, esq->atribuicao < dir->atribuicao);
                    regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "slt");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case LESS_EQUAL:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(INT, 0, esq->atribuicao <= dir->atribuicao);
                    regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sle");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case GREATER_THAN:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(INT, 0, esq->atribuicao > dir->atribuicao);
                    regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sgt");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case GREATER_EQUAL:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(INT, 0, esq->atribuicao >= dir->atribuicao);
                    regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sge");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case EQUAL:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(INT, 0, esq->atribuicao == dir->atribuicao);
                    regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "seq");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case NOT_EQUAL:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(INT, 0, esq->atribuicao != dir->atribuicao);
                    regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sne");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case R_SHIFT:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao >> dir->atribuicao);
                    regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "srlv");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case L_SHIFT:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                        regDir = loadDoArray(dir->numReg);
                        tipoDir = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao << dir->atribuicao);
                    regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "sllv");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                default:
                    printf("Erro: Operador binario desconhecido\n");
                    exit(1);
                    break;
            }

            break;

        case UOP:
            esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);
            tipoEsq = esq->tipoReg;
            regEsq = esq->numReg;

            switch (expressao->operador) {
                case INC:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }

                    if (expressao->preOuPos == 1) {
                        resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, ++(esq->atribuicao));
                        regT = preIncremento(esq->tipoReg, esq->numReg, "addi");
                        resultado->tipoReg = esq->tipoReg;
                        resultado->numReg = regT;

                    } else if (expressao->preOuPos == 2) {
                        int originalValue = esq->atribuicao;
                        esq->atribuicao++;
                        resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, originalValue);
                        regT = posIncremento(esq->tipoReg, esq->numReg, "addi");
                        resultado->tipoReg = 0;
                        resultado->numReg = regT;
                    }

                    hashNoTemp = getIdentifierNode(localHash, expressao->identificador);
                    if (!hashNoTemp) hashNoTemp = getIdentifierNode(globalHash, expressao->identificador);
                    if (hashNoTemp) setAssign(hashNoTemp, resultado->atribuicao);
                    hashNoTemp = NULL;
                    return resultado;
                    break;

                case DEC:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    if (expressao->preOuPos == 1) {
                        resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, --(esq->atribuicao));
                        regT = preIncremento(esq->tipoReg, esq->numReg, "subi");
                        resultado->tipoReg = esq->tipoReg;
                        resultado->numReg = regT;

                    } else if (expressao->preOuPos == 2) {
                        int originalValue = esq->atribuicao;
                        esq->atribuicao--;
                        resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, originalValue);
                        regT = posIncremento(esq->tipoReg, esq->numReg, "subi");
                        resultado->tipoReg = 0;
                        resultado->numReg = regT;
                    }

                    hashNoTemp = getIdentifierNode(localHash, expressao->identificador);
                    if (!hashNoTemp) hashNoTemp = getIdentifierNode(globalHash, expressao->identificador);
                    if (hashNoTemp) setAssign(hashNoTemp, resultado->atribuicao);
                    hashNoTemp = NULL;
                    return resultado;
                    break;

                case BITWISE_NOT:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, ~esq->atribuicao);
                    regT = bitNao(tipoEsq, regEsq);
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case PLUS:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, +esq->atribuicao);
                    regT = maisMenos(tipoEsq, regEsq, "add");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case MINUS:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, -esq->atribuicao);
                    regT = maisMenos(tipoEsq, regEsq, "sub");
                    resultado->numReg = regT;
                    resultado->tipoReg = 0;
                    return resultado;
                    break;

                case NOT:
                    if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                        regEsq = loadDoArray(esq->numReg);
                        tipoEsq = 0;
                    }
                    resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, !(esq->atribuicao));
                    regT = naoLogico(esq->tipoReg, esq->numReg);
                    resultado->tipoReg = 0;
                    resultado->numReg = regT;
                    break;

                case MULTIPLY:
                    if (esq->tipoVar == CHAR && esq->ptr == 1) {
                        resultado = criarResultadoExpressao(CHAR, 0, *(((HashNo *)esq->NoAuxid)->string));
                        int t = loadByte(esq->tipoReg, esq->numReg);
                        resultado->tipoReg = 0;
                        resultado->numReg = t;

                    } else if (esq->tipoVar == INT && esq->ptr == 1) {
                        resultado = criarResultadoExpressao(INT, 0, 0);
                        int i = constante(0);
                        if (esq->numReg == -1) {
                            esq->numReg = atribuicaoEndereco(esq->tipoReg, esq->numReg, ((HashNo *)esq->NoAuxid)->varId);
                            setSRegisterInHash(((HashNo *)esq->NoAuxid), esq->numReg);
                        }
                        int posic = acessarEnderecoArray(esq->tipoReg, esq->numReg, ((HashNo *)esq->NoAuxid)->varId, 0, i, ((HashNo *)esq->NoAuxid)->ehGlobal);
                        resultado->tipoReg = 0;
                        if (noAtri) {
                            resultado->numReg = posic;
                        } else {
                            resultado->numReg = loadDoArray(posic);
                        }

                    } else {
                        resultado = criarResultadoExpressao(esq->tipoVar, 0, *(&esq->atribuicao));
                    }
                    resultado->NoAuxid = esq->NoAuxid;
                    return resultado;
                    break;

                default:
                    printf("Erro: Operador unario desconhecido\n");
                    exit(1);
                    break;
            }

            break;

        case TERNARY:
            esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);
            dir = avaliarExpressao(expressao->dir, globalHash, localHash, programa);

            ResultadoExpr *condicao = avaliarExpressao(expressao->condicaoTernaria, globalHash, localHash, programa);
            ternario(condicao->tipoReg, condicao->numReg, abs((int)((intptr_t)condicao)));
            label("true_ternary_", abs((int)((intptr_t)condicao)));
            esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);
            jump("end_ternary_", abs((int)((intptr_t)condicao)));
            label("false_ternary_", abs((int)((intptr_t)condicao)));
            dir = avaliarExpressao(expressao->dir, globalHash, localHash, programa);
            label("end_ternary_", abs((int)((intptr_t)condicao)));

            tipoEsq = esq->tipoReg;
            regEsq = esq->numReg;
            tipoDir = dir->tipoReg;
            regDir = dir->numReg;

            if (esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR) {
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }
            if (dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR) {
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            if (condicao->atribuicao) {
                resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao);
                resultado->numReg = esq->numReg;
                resultado->tipoReg = esq->tipoReg;
                if (tipoDir == 0) freeReg(tipoDir, regDir);

            } else {
                resultado = criarResultadoExpressao(dir->tipoVar, dir->ptr, dir->atribuicao);
                resultado->numReg = dir->numReg;
                resultado->tipoReg = dir->tipoReg;
                if (tipoEsq == 0) freeReg(tipoEsq, regEsq);
            }
            return resultado;
            break;

        case ARRAY_CALL:
            NoAuxid = getIdentifierNode(localHash, expressao->identificador);
            if (!NoAuxid) NoAuxid = getIdentifierNode(globalHash, expressao->identificador);

            int posic = -1;
            int qntdDimenRecebidas = 0;
            Dimensao *dimenRecebidas = expressao->dimensao;
            Dimensao *dimenEsperada = NoAuxid->dimensao;
            ResultadoExpr *dimenResult = NULL;

            int mipsIndex = constante(1);
            while (dimenRecebidas) {
                qntdDimenRecebidas++;

                dimenResult = avaliarExpressao(dimenRecebidas->exp, globalHash, localHash, programa);
                mipsIndex = opeAritmeticas(0, mipsIndex, dimenResult->tipoReg, dimenResult->numReg, "mul");
                dimenEsperada = dimenEsperada->prox;
                dimenRecebidas = dimenRecebidas->prox;
            }

            posic = acessarEnderecoArray(1, NoAuxid->regS, NoAuxid->varId, 0, mipsIndex, NoAuxid->ehGlobal);
            resultado = criarResultadoExpressao(NoAuxid->tipoVar, 0, 0);
            resultado->tipoReg = 0;
            resultado->numReg = posic;
            resultado->NoAuxid = NoAuxid;
            return resultado;

            break;

        case FUNCTION_CALL:
            NoAuxid = getIdentifierNode(globalHash, expressao->identificador);
            ExpParam *auxParamRecebido = expressao->param;
            int qntdParamRecebido = 0;
            while (auxParamRecebido) {
                qntdParamRecebido++;
                auxParamRecebido = auxParamRecebido->prox;
            }

            Param *auxParam = NoAuxid->param;
            auxParamRecebido = expressao->param;
            ResultadoExpr *resultParam = NULL;

            int i = 1;
            int j = qntdParamRecebido - 1;
            while (auxParamRecebido && auxParam) {
                resultParam = avaliarExpressao(auxParamRecebido->exp, globalHash, localHash, programa);
                if (resultParam->NoAuxid && ((HashNo *)resultParam->NoAuxid)->tipok == VECTOR) {
                    resultParam->numReg = loadDoArray(resultParam->numReg);
                }
                setParametroNoReg(j, resultParam->tipoReg, resultParam->numReg, auxParam->identificador);
                j = j - 1;

                auxParam = auxParam->prox;
                auxParamRecebido = auxParamRecebido->prox;
                i++;
            }
            resultado = criarResultadoExpressao(NoAuxid->tipoVar, NoAuxid->ptr, 0);

            chamarFuncao(NoAuxid->varId);
            int r = imprimirLoadReturnV0();
            resultado->tipoReg = 0;
            resultado->numReg = r;
            resultado->NoAuxid = NoAuxid;
            return resultado;

            break;

        default:
            printf("Erro: Tipo de expressão desconhecido\n");
            break;
    }

    return 0;
}*/

ResultadoExpr *avaliarExpressao(Expressao *expressao, void **globalHash, void **localHash, Programa *programa){
    if(!expressao){
        return NULL;
    }

    ResultadoExpr *esq = NULL, *dir = NULL, *resultado = NULL;

    HashNo *hashNo = NULL, *hashNoTemp = NULL, *NoAuxid = NULL;

    int tipoEsq, tipoDir, regEsq, regDir, regT, regS;

    if(expressao->tipo == PRIMARIA){
        if(expressao->operador == INT){
            return;
        }else if(expressao->tipo == CHAR){
            resultado = criarResultadoExpressao(expressao->tipo, expressao->ptr, expressao->atribuicao);
            int regT = constante(resultado->atribuicao);
            resultado->tipoReg = 0;
            resultado->numReg = regT;
            
            return resultado;

        }else if(expressao->tipo == STRING){
            resultado = criarResultadoExpressao(STRING, 0, 0);
            strcpy(resultado->str, expressao->string);

            return resultado;

        }else if(expressao->tipo == ID){
            hashNo = getIdentifierNode(localHash, expressao->identificador);

            if(!hashNo){
                hashNo = getIdentifierNode(globalHash, expressao->identificador);
            }

            if(!hashNo){
                printf("Erro: Variável %s não declarada\n", expressao->identificador);
            }

            if(hashNo->tipoVar == VOID){
                resultado = criarResultadoExpressao(VOID, hashNo->ptr, hashNo->atribuicao);

                if(hashNo->tipok == VECTOR){
                    resultado->ptr = 1;
                }
                resultado->NoAuxid = hashNo;

                if(hashNo->isConstant || hashNo->ehGlobal){
                    if(!noAtri && hashNo->tipok != VECTOR){
                        resultado->numReg = loadGlobalInt(hashNo->varId);
                        resultado->tipoReg = 0;
                    }
                }else{
                    if(hashNo->ptr > 0){
                        resultado->tipoReg = 1;
                        resultado->numReg = hashNo->regS;
                    }
                }

                return resultado;

            }else if(hashNo->tipoVar == INT || (hashNo->tipoVar == CHAR && hashNo->ptr == 0)){
                resultado = criarResultadoExpressao(hashNo->tipoVar, hashNo->ptr, hashNo->atribuicao);

                if(hashNo->tipok == VECTOR){
                    resultado->ptr = 1;
                }
                resultado->NoAuxid = hashNo;

                if(hashNo->isConstant || hashNo->ehGlobal){
                    if(!noAtri && hashNo->tipok != VECTOR){
                        resultado->numReg = loadGlobalInt(hashNo->varId);
                        resultado->tipoReg = 0;
                    }
                }else{
                    resultado->tipoReg = 1;
                    resultado->numReg = hashNo->regS;
                }

                return resultado;

            }else if(hashNo->tipoVar == CHAR && hashNo->ptr == 1){
                resultado = criarResultadoExpressao(CHAR, 1, 0);
                strcpy(resultado->str, expressao->string);
                resultado->NoAuxid = hashNo;
                resultado->tipoReg = 1;
                resultado->numReg = hashNo->regS;

                return resultado;
            }
        }else{
            printf("Erro: Expressao primaria desconhecida\n");
        }
    }else if(expressao->tipo == BOP){
        if(expressao->esq->operador == ASSIGN){
            noAtri = 1;
        }
        esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);

        if(expressao->esq->operador == ASSIGN){
            noAtri = 0;
        }
        dir = avaliarExpressao(expressao->dir, globalHash, localHash, programa);

        tipoEsq = esq->tipoReg;
        regEsq = esq->numReg;
        tipoDir = dir->tipoReg;
        regDir = dir->numReg;

        if(expressao->operador == ASSIGN){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, dir->atribuicao);

            if((esq->tipoVar == INT || esq->tipoVar == VOID) && esq->ptr == 1 && dir->ptr == 1){
                int s = atribuicaoEndereco(esq->tipoReg, esq->numReg, ((HashNo *)esq->NoAuxid)->varId);
                setSRegisterInHash(((HashNo *)esq->NoAuxid), s);
                resultado->tipoReg = 1;
                resultado->numReg = s;

                return resultado;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }

            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                armazenarNoArray(esq->numReg, tipoDir, regDir);
                resultado->tipoReg = 0;
                regS = esq->numReg;

            }else if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal){
                freeReg(esq->tipoReg, esq->numReg);
                armazenarGlobalInt(tipoDir, regDir, ((HashNo *)esq->NoAuxid)->varId);
                resultado->tipoReg = 0;

            }else{
                if(((HashNo *)esq->NoAuxid)->regS == -1){
                    if(esq->tipoVar == CHAR && esq->ptr == 1){
                        dir->str[strlen(dir->str) - 1] = '\0';
                        char aux[strlen(dir->str) - 1];
                        strcpy(aux, dir->str + 1);

                        for(int i = 0; i < strlen(dir->str); i++){
                            dir->str[i] = '\0';
                        }
                        strcpy(dir->str, aux);
                        regS = declararString(((HashNo *)esq->NoAuxid)->varId, dir->str);
                        resultado->tipoReg = 1;
                        resultado->numReg = regS;
                        ((HashNo *)esq->NoAuxid)->regS = regS;
                        strcpy(((HashNo *)esq->NoAuxid)->string, dir->str);
                    }else{
                        if(expressao->esq->tipo == UOP){
                            armazenadoNoEndereco(esq->tipoReg, esq->numReg, tipoDir, regDir);
                        }else{
                            regS = atribuicao(tipoDir, regDir);
                            ((HashNo *)esq->NoAuxid)->regS = regS;
                        }
                    }
                }else{
                    if(esq->tipoVar == CHAR && esq->ptr == 1){
                        resultado->tipoReg = 1;
                        resultado->numReg = ((HashNo *)esq->NoAuxid)->regS;
                        strcpy(((HashNo *)esq->NoAuxid)->string, dir->str);
                    }else{
                        if(expressao->esq->tipo == UOP){
                            armazenadoNoEndereco(esq->tipoReg, esq->numReg, tipoDir, regDir);

                        }else{
                            regS = esq->numReg;
                            atribuicaoParaReg(tipoDir, regDir, regS);
                        }
                    }
                }
                resultado->tipoReg = 1;
            }
            resultado->numReg = regS;
            hashNoTemp = getIdentifierNode(localHash, expressao->identificador);

            if(!hashNoTemp){
                hashNoTemp = getIdentifierNode(globalHash, expressao->identificador);
            }

            if(hashNoTemp){
                setAssign(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == ADD_ASSIGN){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao + dir->atribuicao);
            regT = opeAritmeticas(esq->tipoReg, esq->numReg, dir->tipoReg, dir->numReg, "add");

            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal){
                freeReg(esq->tipoReg, esq->numReg);
                armazenarGlobalInt(0, regT, ((HashNo *)esq->NoAuxid)->varId);
                resultado->tipoReg = 0;
                resultado->numReg = esq->numReg;
            }else{
                atribuicaoParaReg(0, regT, esq->numReg);
                resultado->numReg = esq->numReg;
                resultado->tipoReg = esq->tipoReg;
            }
            hashNoTemp = getIdentifierNode(localHash, expressao->identificador);

            if(!hashNoTemp){
                hashNoTemp = getIdentifierNode(globalHash, expressao->identificador);
            }

            if(hashNoTemp){
                setAssign(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == MINUS_ASSIGN){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao - dir->atribuicao);
            regT = opeAritmeticas(esq->tipoReg, esq->numReg, dir->tipoReg, dir->numReg, "sub");

            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal){
                freeReg(esq->tipoReg, esq->numReg);
                armazenarGlobalInt(0, regT, ((HashNo *)esq->NoAuxid)->varId);
                resultado->tipoReg = 0;
                resultado->numReg = esq->numReg;
            }else{
                atribuicaoParaReg(0, regT, esq->numReg);
                resultado->numReg = esq->numReg;
                resultado->tipoReg = esq->tipoReg;
            }
            hashNoTemp = getIdentifierNode(localHash, expressao->esq->identificador);

            if(!hashNoTemp){
                hashNoTemp = getIdentifierNode(globalHash, expressao->esq->identificador);
            }

            if(hashNoTemp){
                setAssign(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == PLUS){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao + dir->atribuicao);
            regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "add");

            if(esq->tipoVar == CHAR && esq->ptr == 1){
                strcpy(resultado->str, ((HashNo *)esq->NoAuxid)->string + dir->atribuicao);
            }

            if(dir->tipoVar == CHAR && dir->ptr == 1){
                strcpy(resultado->str, ((HashNo *)dir->NoAuxid)->string + esq->atribuicao);
            }
            resultado->tipoReg = 0;
            resultado->numReg = regT;

            return resultado;
        }else if(expressao->operador == MINUS){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao - dir->atribuicao);
            int regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "sub");
            resultado->tipoReg = 0;
            resultado->numReg = regT;

            return resultado;
        }else if(expressao->operador == MULTIPLY){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao * dir->atribuicao);
            regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "mul");
            resultado->numReg = regT;
            resultado->tipoReg = 0;
            return resultado;
        }else if(expressao->operador == DIVIDE){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao / dir->atribuicao);
            regT = opDivisao(tipoEsq, regEsq, tipoDir, regDir, "mflo");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == REMAINDER){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao % dir->atribuicao);
            regT = opDivisao(tipoEsq, regEsq, tipoDir, regDir, "mfhi");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == BITWISE_OR){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao | dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "or");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == BITWISE_AND){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao & dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "and");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == BITWISE_XOR){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao ^ dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "xor");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LOGICAL_AND){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao && dir->atribuicao);
            regT = eLogico(tipoEsq, regEsq, tipoDir, regDir, abs((int)((intptr_t)expressao)));
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LOGICAL_OR){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao || dir->atribuicao);
            regT = ouLogico(tipoEsq, regEsq, tipoDir, regDir, abs((int)((intptr_t)expressao)));
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LESS_THAN){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao < dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "slt");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LESS_EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao <= dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sle");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == GREATER_THAN){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao > dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sgt");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == GREATER_EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao >= dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sge");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao == dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "seq");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == NOT_EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao != dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sne");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == R_SHIFT){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao >> dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "srlv");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == L_SHIFT){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao << dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "sllv");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }
    }else if(expressao->tipo == BOP){
        if(expressao->esq->operador == ASSIGN){
            noAtri = 1;
        }
        esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);

        if(expressao->esq->operador == ASSIGN){
            noAtri = 0;
        }
        dir = avaliarExpressao(expressao->dir, globalHash, localHash, programa);

        tipoEsq = esq->tipoReg;
        regEsq = esq->numReg;
        tipoDir = dir->tipoReg;
        regDir = dir->numReg;

        if(expressao->operador == ASSIGN){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, dir->atribuicao);

            if((esq->tipoVar == INT || esq->tipoVar == VOID) && esq->ptr == 1 && dir->ptr == 1){
                int s = atribuicaoEndereco(esq->tipoReg, esq->numReg, ((HashNo *)esq->NoAuxid)->varId);
                setSRegisterInHash(((HashNo *)esq->NoAuxid), s);
                resultado->tipoReg = 1;
                resultado->numReg = s;

                return resultado;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }

            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                armazenarNoArray(esq->numReg, tipoDir, regDir);
                resultado->tipoReg = 0;
                regS = esq->numReg;

            }else if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal){
                freeReg(esq->tipoReg, esq->numReg);
                armazenarGlobalInt(tipoDir, regDir, ((HashNo *)esq->NoAuxid)->varId);
                resultado->tipoReg = 0;
            }else{
                if(((HashNo *)esq->NoAuxid)->regS == -1){
                    if(esq->tipoVar == CHAR && esq->ptr == 1){
                        dir->str[strlen(dir->str) - 1] = '\0';
                        char aux[strlen(dir->str) - 1];
                        strcpy(aux, dir->str + 1);

                        for(int i = 0; i < strlen(dir->str); i++){
                            dir->str[i] = '\0';
                        }
                        strcpy(dir->str, aux);
                        regS = declararString(((HashNo *)esq->NoAuxid)->varId, dir->str);
                        resultado->tipoReg = 1;
                        resultado->numReg = regS;
                        ((HashNo *)esq->NoAuxid)->regS = regS;
                        strcpy(((HashNo *)esq->NoAuxid)->string, dir->str);
                    }else{
                        if(expressao->esq->tipo == UOP){
                            armazenadoNoEndereco(esq->tipoReg, esq->numReg, tipoDir, regDir);
                        }else{
                            regS = atribuicao(tipoDir, regDir);
                            ((HashNo *)esq->NoAuxid)->regS = regS;
                        }
                    }
                }else{
                    if(esq->tipoVar == CHAR && esq->ptr == 1){
                        resultado->tipoReg = 1;
                        resultado->numReg = ((HashNo *)esq->NoAuxid)->regS;
                        strcpy(((HashNo *)esq->NoAuxid)->string, dir->str);
                    }else{
                        if(expressao->esq->tipo == UOP){
                            armazenadoNoEndereco(esq->tipoReg, esq->numReg, tipoDir, regDir);
                        }else{
                            regS = esq->numReg;
                            atribuicaoParaReg(tipoDir, regDir, regS);
                        }
                    }
                }
                resultado->tipoReg = 1;
            }
            resultado->numReg = regS;
            hashNoTemp = getIdentifierNode(localHash, expressao->identificador);

            if(!hashNoTemp){
                hashNoTemp = getIdentifierNode(globalHash, expressao->identificador);
            }

            if(hashNoTemp){
                setAssign(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == ADD_ASSIGN){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao + dir->atribuicao);
            regT = opeAritmeticas(esq->tipoReg, esq->numReg, dir->tipoReg, dir->numReg, "add");

            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal){
                freeReg(esq->tipoReg, esq->numReg);
                armazenarGlobalInt(0, regT, ((HashNo *)esq->NoAuxid)->varId);
                resultado->tipoReg = 0;
                resultado->numReg = esq->numReg;
            }else{
                atribuicaoParaReg(0, regT, esq->numReg);
                resultado->numReg = esq->numReg;
                resultado->tipoReg = esq->tipoReg;
            }
            hashNoTemp = getIdentifierNode(localHash, expressao->identificador);

            if(!hashNoTemp){
                hashNoTemp = getIdentifierNode(globalHash, expressao->identificador);
            }

            if(hashNoTemp){
                setAssign(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == MINUS_ASSIGN){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao - dir->atribuicao);
            regT = opeAritmeticas(esq->tipoReg, esq->numReg, dir->tipoReg, dir->numReg, "sub");

            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal){
                freeReg(esq->tipoReg, esq->numReg);
                armazenarGlobalInt(0, regT, ((HashNo *)esq->NoAuxid)->varId);
                resultado->tipoReg = 0;
                resultado->numReg = esq->numReg;
            }else{
                atribuicaoParaReg(0, regT, esq->numReg);
                resultado->numReg = esq->numReg;
                resultado->tipoReg = esq->tipoReg;
            }
            hashNoTemp = getIdentifierNode(localHash, expressao->esq->identificador);

            if(!hashNoTemp){
                hashNoTemp = getIdentifierNode(globalHash, expressao->esq->identificador);
            }

            if(hashNoTemp){
                setAssign(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == PLUS){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao + dir->atribuicao);
            regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "add");

            if(esq->tipoVar == CHAR && esq->ptr == 1){
                strcpy(resultado->str, ((HashNo *)esq->NoAuxid)->string + dir->atribuicao);
            }

            if(dir->tipoVar == CHAR && dir->ptr == 1){
                strcpy(resultado->str, ((HashNo *)dir->NoAuxid)->string + esq->atribuicao);
            }
            resultado->tipoReg = 0;
            resultado->numReg = regT;

            return resultado;
        }else if(expressao->operador == MINUS){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao - dir->atribuicao);
            int regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "sub");
            resultado->tipoReg = 0;
            resultado->numReg = regT;

            return resultado;
        }else if(expressao->operador == MULTIPLY){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao * dir->atribuicao);
            regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "mul");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == DIVIDE){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao / dir->atribuicao);
            regT = opDivisao(tipoEsq, regEsq, tipoDir, regDir, "mflo");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == REMAINDER){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao % dir->atribuicao);
            regT = opDivisao(tipoEsq, regEsq, tipoDir, regDir, "mfhi");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == BITWISE_OR){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao | dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "or");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == BITWISE_AND){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao & dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "and");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == BITWISE_XOR){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao ^ dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "xor");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LOGICAL_AND){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao && dir->atribuicao);
            regT = eLogico(tipoEsq, regEsq, tipoDir, regDir, abs((int)((intptr_t)expressao)));
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LOGICAL_OR){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao || dir->atribuicao);
            regT = ouLogico(tipoEsq, regEsq, tipoDir, regDir, abs((int)((intptr_t)expressao)));
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LESS_THAN){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao < dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "slt");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LESS_EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }
            
            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao <= dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sle");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == GREATER_THAN){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao > dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sgt");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == GREATER_EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao >= dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sge");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao == dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "seq");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == NOT_EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao != dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sne");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == R_SHIFT){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao >> dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "srlv");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == L_SHIFT){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao << dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "sllv");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else{
            printf("Erro: Operador binario desconhecido\n");
            exit(1);
        }
    }else if(expressao->tipo == UOP){
        esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);
        tipoEsq = esq->tipoReg;
        regEsq = esq->numReg;

        if(expressao->operador == INC){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(expressao->preOuPos == 1){
                resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, ++(esq->atribuicao));
                regT = preIncremento(esq->tipoReg, esq->numReg, "addi");
                resultado->tipoReg = esq->tipoReg;
                resultado->numReg = regT;

            }else if(expressao->preOuPos == 2){
                int originalValue = esq->atribuicao;
                esq->atribuicao++;
                resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, originalValue);
                regT = posIncremento(esq->tipoReg, esq->numReg, "addi");
                resultado->tipoReg = 0;
                resultado->numReg = regT;
            }
            hashNoTemp = getIdentifierNode(localHash, expressao->identificador);

            if(!hashNoTemp){
                hashNoTemp = getIdentifierNode(globalHash, expressao->identificador);
            }

            if(hashNoTemp){
                setAssign(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == DEC){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(expressao->preOuPos == 1){
                resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, --(esq->atribuicao));
                regT = preIncremento(esq->tipoReg, esq->numReg, "subi");
                resultado->tipoReg = esq->tipoReg;
                resultado->numReg = regT;
            }else if(expressao->preOuPos == 2){
                int originalValue = esq->atribuicao;
                esq->atribuicao--;
                resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, originalValue);
                regT = posIncremento(esq->tipoReg, esq->numReg, "subi");
                resultado->tipoReg = 0;
                resultado->numReg = regT;
            }
            hashNoTemp = getIdentifierNode(localHash, expressao->identificador);

            if(!hashNoTemp){
                hashNoTemp = getIdentifierNode(globalHash, expressao->identificador);
            }

            if(hashNoTemp){
                setAssign(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == BITWISE_NOT){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, ~esq->atribuicao);
            regT = bitNao(tipoEsq, regEsq);
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == PLUS){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, +esq->atribuicao);
            regT = maisMenos(tipoEsq, regEsq, "add");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == MINUS){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, -esq->atribuicao);
            regT = maisMenos(tipoEsq, regEsq, "sub");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == NOT){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, !(esq->atribuicao));
            regT = naoLogico(esq->tipoReg, esq->numReg);
            resultado->tipoReg = 0;
            resultado->numReg = regT;
        }else if(expressao->operador == MULTIPLY){
            if(esq->tipoVar == CHAR && esq->ptr == 1){
                resultado = criarResultadoExpressao(CHAR, 0, *(((HashNo *)esq->NoAuxid)->string));
                int t = loadByte(esq->tipoReg, esq->numReg);
                resultado->tipoReg = 0;
                resultado->numReg = t;
            }else if(esq->tipoVar == INT && esq->ptr == 1){
                resultado = criarResultadoExpressao(INT, 0, 0);
                int i = constante(0);

                if(esq->numReg == -1){
                    esq->numReg = atribuicaoEndereco(esq->tipoReg, esq->numReg, ((HashNo *)esq->NoAuxid)->varId);
                    setSRegisterInHash(((HashNo *)esq->NoAuxid), esq->numReg);
                }
                int posic = acessarEnderecoArray(esq->tipoReg, esq->numReg, ((HashNo *)esq->NoAuxid)->varId, 0, i, ((HashNo *)esq->NoAuxid)->ehGlobal);
                resultado->tipoReg = 0;

                if(noAtri){
                    resultado->numReg = posic;
                }else{
                    resultado->numReg = loadDoArray(posic);
                }
            }else{
                resultado = criarResultadoExpressao(esq->tipoVar, 0, *(&esq->atribuicao));
            }
            resultado->NoAuxid = esq->NoAuxid;

            return resultado;
        }else{
            printf("Erro: Operador unario desconhecido\n");
            exit(1);
        }
    }else if(expressao->tipo == TERNARY){
        esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);
        dir = avaliarExpressao(expressao->dir, globalHash, localHash, programa);

        ResultadoExpr *condicao = avaliarExpressao(expressao->condicaoTernaria, globalHash, localHash, programa);
        ternario(condicao->tipoReg, condicao->numReg, abs((int)((intptr_t)condicao)));
        label("true_ternary_", abs((int)((intptr_t)condicao)));
        esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);
        jump("end_ternary_", abs((int)((intptr_t)condicao)));
        label("false_ternary_", abs((int)((intptr_t)condicao)));
        dir = avaliarExpressao(expressao->dir, globalHash, localHash, programa);
        label("end_ternary_", abs((int)((intptr_t)condicao)));

        tipoEsq = esq->tipoReg;
        regEsq = esq->numReg;
        tipoDir = dir->tipoReg;
        regDir = dir->numReg;

        if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VECTOR){
            regEsq = loadDoArray(esq->numReg);
            tipoEsq = 0;
        }

        if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VECTOR){
            regDir = loadDoArray(dir->numReg);
            tipoDir = 0;
        }

        if(condicao->atribuicao){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao);
            resultado->numReg = esq->numReg;
            resultado->tipoReg = esq->tipoReg;
            if(tipoDir == 0){
                freeReg(tipoDir, regDir);
            }
        }else{
            resultado = criarResultadoExpressao(dir->tipoVar, dir->ptr, dir->atribuicao);
            resultado->numReg = dir->numReg;
            resultado->tipoReg = dir->tipoReg;
            if(tipoEsq == 0){
                freeReg(tipoEsq, regEsq);
            }
        }

        return resultado;
    }else if(expressao->tipo == ARRAY_CALL){
        NoAuxid = getIdentifierNode(localHash, expressao->identificador);

        if(!NoAuxid){
            NoAuxid = getIdentifierNode(globalHash, expressao->identificador);
        }

        int posic = -1, qntdDimenRecebidas = 0;
        Dimensao *dimenRecebidas = expressao->dimensao, *dimenEsperada = NoAuxid->dimensao;
        ResultadoExpr *dimenResult = NULL;

        int mipsIndex = constante(1);

        while(dimenRecebidas){
            qntdDimenRecebidas++;
            dimenResult = avaliarExpressao(dimenRecebidas->exp, globalHash, localHash, programa);
            mipsIndex = opeAritmeticas(0, mipsIndex, dimenResult->tipoReg, dimenResult->numReg, "mul");
            dimenEsperada = dimenEsperada->prox;
            dimenRecebidas = dimenRecebidas->prox;
        }
        posic = acessarEnderecoArray(1, NoAuxid->regS, NoAuxid->varId, 0, mipsIndex, NoAuxid->ehGlobal);
        resultado = criarResultadoExpressao(NoAuxid->tipoVar, 0, 0);
        resultado->tipoReg = 0;
        resultado->numReg = posic;
        resultado->NoAuxid = NoAuxid;

        return resultado;
    }else if(expressao->tipo == FUNCTION_CALL){
        NoAuxid = getIdentifierNode(globalHash, expressao->identificador);
        ExpParam *auxParamRecebido = expressao->param;
        int qntdParamRecebido = 0;

        while(auxParamRecebido){
            qntdParamRecebido++;
            auxParamRecebido = auxParamRecebido->prox;
        }
        Param *auxParam = NoAuxid->param;
        auxParamRecebido = expressao->param;
        ResultadoExpr *resultParam = NULL;
        int i = 1, j = qntdParamRecebido - 1;

        while(auxParamRecebido && auxParam){
            resultParam = avaliarExpressao(auxParamRecebido->exp, globalHash, localHash, programa);

            if(resultParam->NoAuxid && ((HashNo *)resultParam->NoAuxid)->tipok == VECTOR){
                resultParam->numReg = loadDoArray(resultParam->numReg);
            }
            setParametroNoReg(j, resultParam->tipoReg, resultParam->numReg, auxParam->identificador);
            j = j - 1;
            auxParam = auxParam->prox;
            auxParamRecebido = auxParamRecebido->prox;
            i++;
        }
        resultado = criarResultadoExpressao(NoAuxid->tipoVar, NoAuxid->ptr, 0);
        chamarFuncao(NoAuxid->varId);
        int r = imprimirLoadReturnV0();
        resultado->tipoReg = 0;
        resultado->numReg = r;
        resultado->NoAuxid = NoAuxid;

        return resultado;
    }else{
        printf("Erro: Tipo de expressão desconhecido\n");
    }
    return 0;
}

/*void traverseASTCommand(Comando *comando, void **globalHash, void **localHash, Programa *programa, Funcao *funcaoAtual) {
    if(!comando || comando->visitado){
        return;
    }
    comando->visitado = 1;

    Comando *t = NULL;
    switch (comando->tipo) {
        case IF:
            ResultadoExpr *ifResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);

            int ifLine = abs((int)((intptr_t)comando->entao));
            int elseLine = -1;
            if (comando->elseS) {
                elseLine = abs((int)((intptr_t)comando->elseS));
            } else {
                elseLine = ifLine;
            }
            se(ifResult->tipoReg, ifResult->numReg, elseLine);
            t = comando->entao;
            while (t) {
                traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
                t = t->prox;
            }
            jump("exit_if_", ifLine);
            label("else_", elseLine);
            Comando *t2 = comando->elseS;
            while (t2) {
                traverseASTCommand(t2, globalHash, localHash, programa, funcaoAtual);
                t2 = t2->prox;
            }
            label("exit_if_", ifLine);
            break;

        case DO_WHILE:
        case WHILE:
            int whileLine = abs((int)((intptr_t)comando));
            if (comando->tipo == WHILE)
                jump("while_teste_", whileLine);
            label("while_corpo_", whileLine);
            t = comando->entao;
            while (t) {
                traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
                t = t->prox;
            }
            label("while_teste_", whileLine);
            ResultadoExpr *whileResult = NULL;
            whileResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
            enquanto(whileResult->tipoReg, whileResult->numReg, whileLine);
            break;

        case FOR:
            int forLine = abs((int)((intptr_t)comando));
            avaliarExpressao(comando->ini, globalHash, localHash, programa);
            jump("for_teste_", forLine);
            label("for_corpo_", forLine);
            t = comando->entao;
            while (t) {
                traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
                t = t->prox;
            }
            avaliarExpressao(comando->incrimenta, globalHash, localHash, programa);
            label("for_teste_", forLine);
            ResultadoExpr *forResult = NULL;
            forResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
            para(forResult->tipoReg, forResult->numReg, forLine);
            break;

        case PRINTF:
            if (comando->imprimirAux) {
                Expressao *prox = comando->imprimirAux;
                ResultadoExpr *toPrint = NULL;

                char *restOfString = NULL;

                char *stringWithoutFormat = calloc(strlen(comando->string) + 1, sizeof(char));
                strcpy(stringWithoutFormat, comando->string + 1);
                while (prox) {
                    toPrint = avaliarExpressao(prox, globalHash, localHash, programa);
                    prox = prox->proxExpr;
                    if (toPrint) {
                        if (toPrint->NoAuxid) {
                            if (((HashNo *)toPrint->NoAuxid)->tipok == VECTOR) {
                                toPrint->numReg = loadDoArray(toPrint->numReg);
                                toPrint->tipoReg = 0;
                            }
                        }
                    }

                    int printing = 0;
                    char *formatSpecifier = strstr(stringWithoutFormat, "%d");
                    if (formatSpecifier) {
                        printing = INT;
                    } else {
                        formatSpecifier = strstr(stringWithoutFormat, "%s");
                        if (formatSpecifier) {
                            printing = STRING;
                        } else {
                            formatSpecifier = strstr(stringWithoutFormat, "%c");
                            if (formatSpecifier) {
                                printing = CHAR;
                            }
                        }
                    }
                    if (restOfString) free(restOfString);
                    restOfString = calloc(strlen(formatSpecifier) + 1, sizeof(char));
                    strcpy(restOfString, formatSpecifier + 2);
                    restOfString[strlen(restOfString)] = '\0';
                    if (formatSpecifier != NULL) *formatSpecifier = '\0';
                    string(stringWithoutFormat, abs((int)((intptr_t)toPrint)));
                    if (printing == INT)
                        inteiro(toPrint->tipoReg, toPrint->numReg);
                    else if (printing == CHAR)
                        caracter(toPrint->tipoReg, toPrint->numReg);
                    else if (printing == STRING)
                        stringVar(toPrint->tipoReg, toPrint->numReg);

                    free(stringWithoutFormat);
                    stringWithoutFormat = calloc(strlen(restOfString) + 1, sizeof(char));
                    strcpy(stringWithoutFormat, restOfString);
                }
                if (strlen(restOfString) > 0) {
                    restOfString[strlen(restOfString) - 1] = '\0';
                    string(restOfString, rand() % 67282);
                }
                if (restOfString) free(restOfString);
                if (stringWithoutFormat) free(stringWithoutFormat);

            } else {
                char *fixedString = calloc(strlen(comando->string) - 1, sizeof(char));
                strncpy(fixedString, comando->string + 1, strlen(comando->string) - 2);
                fixedString[strlen(comando->string) - 2] = '\0';
                string(fixedString, abs((int)((intptr_t)comando->string)));
                free(fixedString);
            }
            break;

        case SCANF:
            HashNo *node = getIdentifierNode(localHash, comando->identificador);
            if (!node) node = getIdentifierNode(globalHash, comando->identificador);
            if (!node) printf("Erro: Variável %s não declarada no scanf\n", comando->identificador);

            int sReg = scanInt(node->regS, node->varId, node->ehGlobal);
            node->regS = sReg;
            break;

        case RETURN:
            if (funcaoAtual->retornaTipo == VOID && funcaoAtual->ptr == 0) {
                if (comando->condicao) printf("Erro: Função %s não pode retornar valor\n", funcaoAtual->nome);
                if (strcmp(funcaoAtual->nome, "main")) {
                    loadDaPilha();
                    loadRegT(regTsv);
                    imprimirReturn();
                }
            } else {
                if (!comando->condicao) printf("Erro: Função %s deve retornar valor\n", funcaoAtual->nome);
                ResultadoExpr *returnAux = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
                if (returnAux->NoAuxid) {
                    if (((HashNo *)returnAux->NoAuxid)->regS == -1) {
                        int null = constante(0);
                        int s = atribuicao(0, null);
                        setSRegisterInHash((HashNo *)returnAux->NoAuxid, s);
                        returnAux->tipoReg = 1;
                        returnAux->numReg = s;
                    }
                }
                imprimirReturnV0(returnAux->tipoReg, returnAux->numReg);
                if (strcmp(funcaoAtual->nome, "main")) {
                    loadDaPilha();
                    loadRegT(regTsv);
                    imprimirReturn();
                }
            }
            break;

        case EXIT:
            if (comando->condicao) {
                ResultadoExpr *status = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
                printf("\t# exit with status %d", status->atribuicao);
                imprimirExit();
            }
            break;

        case LISTA_EXP_COMANDO:
            avaliarExpressao(comando->condicao, globalHash, localHash, programa);
            traverseASTCommand(comando->prox, globalHash, localHash, programa, funcaoAtual);
            break;

        default:
            printf("Erro: Comando desconhecido!\n");
            break;
    }
}*/

void traverseASTCommand(Comando *comando, void **globalHash, void **localHash, Programa *programa, Funcao *funcaoAtual) {
    if(!comando || comando->visitado){
        return;
    }
    comando->visitado = 1;

    Comando *t = NULL;

    if(comando->tipo == IF){
        ResultadoExpr *ifResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
        int ifLine = abs((int)((intptr_t)comando->entao)), elseLine = -1;

        if(comando->elseS){
            elseLine = abs((int)((intptr_t)comando->elseS));
        }else{
            elseLine = ifLine;
        }
        se(ifResult->tipoReg, ifResult->numReg, elseLine);
        t = comando->entao;

        while(t){
            traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
            t = t->prox;
        }
        jump("exit_if_", ifLine);
        label("else_", elseLine);
        Comando *t2 = comando->elseS;

        while(t2){
            traverseASTCommand(t2, globalHash, localHash, programa, funcaoAtual);
            t2 = t2->prox;
        }
        label("exit_if_", ifLine);
    }else if(comando->tipo == DO_WHILE){
        return;
    }else if(comando->tipo == WHILE){
        int whileLine = abs((int)((intptr_t)comando));
        if(comando->tipo == WHILE){
            jump("while_teste_", whileLine);
        }
        label("while_corpo_", whileLine);
        t = comando->entao;

        while(t){
            traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
            t = t->prox;
        }
        label("while_teste_", whileLine);
        ResultadoExpr *whileResult = NULL;
        whileResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
        enquanto(whileResult->tipoReg, whileResult->numReg, whileLine);
    }else if(comando->tipo == FOR){
        int forLine = abs((int)((intptr_t)comando));
        avaliarExpressao(comando->ini, globalHash, localHash, programa);
        jump("for_teste_", forLine);
        label("for_corpo_", forLine);
        t = comando->entao;

        while(t){
            traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
            t = t->prox;
        }
        avaliarExpressao(comando->incrimenta, globalHash, localHash, programa);
        label("for_teste_", forLine);
        ResultadoExpr *forResult = NULL;
        forResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
        para(forResult->tipoReg, forResult->numReg, forLine);
    }else if(comando->tipo == PRINTF){
        if(comando->imprimirAux){
            Expressao *prox = comando->imprimirAux;
            ResultadoExpr *toPrint = NULL;
            char *restOfString = NULL;
            char *stringWithoutFormat = calloc(strlen(comando->string) + 1, sizeof(char));
            strcpy(stringWithoutFormat, comando->string + 1);

            while(prox){
                toPrint = avaliarExpressao(prox, globalHash, localHash, programa);
                prox = prox->proxExpr;

                if(toPrint){
                    if(toPrint->NoAuxid){
                        if(((HashNo *)toPrint->NoAuxid)->tipok == VECTOR){
                            toPrint->numReg = loadDoArray(toPrint->numReg);
                            toPrint->tipoReg = 0;
                        }
                    }
                }
                int printing = 0;
                char *formatSpecifier = strstr(stringWithoutFormat, "%d");

                if(formatSpecifier){
                    printing = INT;
                }else{
                    formatSpecifier = strstr(stringWithoutFormat, "%s");
                    if(formatSpecifier){
                        printing = STRING;
                    }else{
                        formatSpecifier = strstr(stringWithoutFormat, "%c");

                        if(formatSpecifier){
                            printing = CHAR;
                        }
                    }
                }

                if(restOfString){
                    free(restOfString);
                }
                restOfString = calloc(strlen(formatSpecifier) + 1, sizeof(char));
                strcpy(restOfString, formatSpecifier + 2);
                restOfString[strlen(restOfString)] = '\0';

                if(formatSpecifier != NULL){
                    *formatSpecifier = '\0';
                }
                string(stringWithoutFormat, abs((int)((intptr_t)toPrint)));

                if (printing == INT){
                    inteiro(toPrint->tipoReg, toPrint->numReg);
                }else if (printing == CHAR){
                    caracter(toPrint->tipoReg, toPrint->numReg);
                }else if (printing == STRING){
                    stringVar(toPrint->tipoReg, toPrint->numReg);
                }
                free(stringWithoutFormat);
                stringWithoutFormat = calloc(strlen(restOfString) + 1, sizeof(char));
                strcpy(stringWithoutFormat, restOfString);
            }

            if(strlen(restOfString) > 0){
                restOfString[strlen(restOfString) - 1] = '\0';
                string(restOfString, rand() % 67282);
            }

            if(restOfString){
                free(restOfString);
            }

            if(stringWithoutFormat){
                free(stringWithoutFormat);
            }
        }else{
            char *fixedString = calloc(strlen(comando->string) - 1, sizeof(char));
            strncpy(fixedString, comando->string + 1, strlen(comando->string) - 2);
            fixedString[strlen(comando->string) - 2] = '\0';
            string(fixedString, abs((int)((intptr_t)comando->string)));
            free(fixedString);
        }
    }else if(comando->tipo == SCANF){
        HashNo *node = getIdentifierNode(localHash, comando->identificador);

        if(!node){
            node = getIdentifierNode(globalHash, comando->identificador);
        }

        if(!node){
            printf("Erro: Variável %s não declarada no scanf\n", comando->identificador);
        }

        int sReg = scanInt(node->regS, node->varId, node->ehGlobal);
        node->regS = sReg;
    }else if(comando->tipo == RETURN){
        if(funcaoAtual->retornaTipo == VOID && funcaoAtual->ptr == 0){
            if(comando->condicao){
                printf("Erro: Função %s não pode retornar valor\n", funcaoAtual->nome);
            }

            if(strcmp(funcaoAtual->nome, "main")){
                loadDaPilha();
                loadRegT(regTsv);
                imprimirReturn();
            }
        } else {
            if (!comando->condicao) printf("Erro: Função %s deve retornar valor\n", funcaoAtual->nome);
            ResultadoExpr *returnAux = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
            if (returnAux->NoAuxid) {
                if (((HashNo *)returnAux->NoAuxid)->regS == -1) {
                    int null = constante(0);
                    int s = atribuicao(0, null);
                    setSRegisterInHash((HashNo *)returnAux->NoAuxid, s);
                    returnAux->tipoReg = 1;
                    returnAux->numReg = s;
                }
            }
            imprimirReturnV0(returnAux->tipoReg, returnAux->numReg);
            if (strcmp(funcaoAtual->nome, "main")) {
                loadDaPilha();
                loadRegT(regTsv);
                imprimirReturn();
            }
        }
    }

    switch (comando->tipo) {
        case IF:
            ResultadoExpr *ifResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);

            int ifLine = abs((int)((intptr_t)comando->entao));
            int elseLine = -1;
            if (comando->elseS) {
                elseLine = abs((int)((intptr_t)comando->elseS));
            } else {
                elseLine = ifLine;
            }
            se(ifResult->tipoReg, ifResult->numReg, elseLine);
            t = comando->entao;
            while (t) {
                traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
                t = t->prox;
            }
            jump("exit_if_", ifLine);
            label("else_", elseLine);
            Comando *t2 = comando->elseS;
            while (t2) {
                traverseASTCommand(t2, globalHash, localHash, programa, funcaoAtual);
                t2 = t2->prox;
            }
            label("exit_if_", ifLine);
            break;

        case DO_WHILE:
        case WHILE:
            int whileLine = abs((int)((intptr_t)comando));
            if (comando->tipo == WHILE)
                jump("while_teste_", whileLine);
            label("while_corpo_", whileLine);
            t = comando->entao;
            while (t) {
                traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
                t = t->prox;
            }
            label("while_teste_", whileLine);
            ResultadoExpr *whileResult = NULL;
            whileResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
            enquanto(whileResult->tipoReg, whileResult->numReg, whileLine);
            break;

        case FOR:
            int forLine = abs((int)((intptr_t)comando));
            avaliarExpressao(comando->ini, globalHash, localHash, programa);
            jump("for_teste_", forLine);
            label("for_corpo_", forLine);
            t = comando->entao;
            while (t) {
                traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
                t = t->prox;
            }
            avaliarExpressao(comando->incrimenta, globalHash, localHash, programa);
            label("for_teste_", forLine);
            ResultadoExpr *forResult = NULL;
            forResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
            para(forResult->tipoReg, forResult->numReg, forLine);
            break;

        case PRINTF:
            if (comando->imprimirAux) {
                Expressao *prox = comando->imprimirAux;
                ResultadoExpr *toPrint = NULL;

                char *restOfString = NULL;

                char *stringWithoutFormat = calloc(strlen(comando->string) + 1, sizeof(char));
                strcpy(stringWithoutFormat, comando->string + 1);
                while (prox) {
                    toPrint = avaliarExpressao(prox, globalHash, localHash, programa);
                    prox = prox->proxExpr;
                    if (toPrint) {
                        if (toPrint->NoAuxid) {
                            if (((HashNo *)toPrint->NoAuxid)->tipok == VECTOR) {
                                toPrint->numReg = loadDoArray(toPrint->numReg);
                                toPrint->tipoReg = 0;
                            }
                        }
                    }

                    int printing = 0;
                    char *formatSpecifier = strstr(stringWithoutFormat, "%d");
                    if (formatSpecifier) {
                        printing = INT;
                    } else {
                        formatSpecifier = strstr(stringWithoutFormat, "%s");
                        if (formatSpecifier) {
                            printing = STRING;
                        } else {
                            formatSpecifier = strstr(stringWithoutFormat, "%c");
                            if (formatSpecifier) {
                                printing = CHAR;
                            }
                        }
                    }
                    if (restOfString) free(restOfString);
                    restOfString = calloc(strlen(formatSpecifier) + 1, sizeof(char));
                    strcpy(restOfString, formatSpecifier + 2);
                    restOfString[strlen(restOfString)] = '\0';
                    if (formatSpecifier != NULL) *formatSpecifier = '\0';
                    string(stringWithoutFormat, abs((int)((intptr_t)toPrint)));
                    if (printing == INT)
                        inteiro(toPrint->tipoReg, toPrint->numReg);
                    else if (printing == CHAR)
                        caracter(toPrint->tipoReg, toPrint->numReg);
                    else if (printing == STRING)
                        stringVar(toPrint->tipoReg, toPrint->numReg);

                    free(stringWithoutFormat);
                    stringWithoutFormat = calloc(strlen(restOfString) + 1, sizeof(char));
                    strcpy(stringWithoutFormat, restOfString);
                }
                if (strlen(restOfString) > 0) {
                    restOfString[strlen(restOfString) - 1] = '\0';
                    string(restOfString, rand() % 67282);
                }
                if (restOfString) free(restOfString);
                if (stringWithoutFormat) free(stringWithoutFormat);

            } else {
                char *fixedString = calloc(strlen(comando->string) - 1, sizeof(char));
                strncpy(fixedString, comando->string + 1, strlen(comando->string) - 2);
                fixedString[strlen(comando->string) - 2] = '\0';
                string(fixedString, abs((int)((intptr_t)comando->string)));
                free(fixedString);
            }
            break;

        case SCANF:
            HashNo *node = getIdentifierNode(localHash, comando->identificador);
            if (!node) node = getIdentifierNode(globalHash, comando->identificador);
            if (!node) printf("Erro: Variável %s não declarada no scanf\n", comando->identificador);

            int sReg = scanInt(node->regS, node->varId, node->ehGlobal);
            node->regS = sReg;
            break;

        case RETURN:
            if (funcaoAtual->retornaTipo == VOID && funcaoAtual->ptr == 0) {
                if (comando->condicao) printf("Erro: Função %s não pode retornar valor\n", funcaoAtual->nome);
                if (strcmp(funcaoAtual->nome, "main")) {
                    loadDaPilha();
                    loadRegT(regTsv);
                    imprimirReturn();
                }
            } else {
                if (!comando->condicao) printf("Erro: Função %s deve retornar valor\n", funcaoAtual->nome);
                ResultadoExpr *returnAux = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
                if (returnAux->NoAuxid) {
                    if (((HashNo *)returnAux->NoAuxid)->regS == -1) {
                        int null = constante(0);
                        int s = atribuicao(0, null);
                        setSRegisterInHash((HashNo *)returnAux->NoAuxid, s);
                        returnAux->tipoReg = 1;
                        returnAux->numReg = s;
                    }
                }
                imprimirReturnV0(returnAux->tipoReg, returnAux->numReg);
                if (strcmp(funcaoAtual->nome, "main")) {
                    loadDaPilha();
                    loadRegT(regTsv);
                    imprimirReturn();
                }
            }
            break;

        case EXIT:
            if (comando->condicao) {
                ResultadoExpr *status = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
                printf("\t# exit with status %d", status->atribuicao);
                imprimirExit();
            }
            break;

        case LISTA_EXP_COMANDO:
            avaliarExpressao(comando->condicao, globalHash, localHash, programa);
            traverseASTCommand(comando->prox, globalHash, localHash, programa, funcaoAtual);
            break;

        default:
            printf("Erro: Comando desconhecido!\n");
            break;
    }
}

void lookForNodeInHashWithExpr(void **globalHash, void **localHash, Programa *programa){
    if(!localHash){
        return;
    }

    for(int i = 0; i < TAM_HASH; i++){
        HashNo *node = (HashNo *)localHash[i];
        ResultadoExpr *atrib = NULL;

        while(node){
            if(node->tipok == FUNCTION || node->isConstant){
                node = node->prox;
                continue;
            }

            if(localHash == globalHash){
                node->ehGlobal = 1;
                int size = 0;
                if(node->tipok == VAR){
                    if(node->tipoVar == NUM_INT || node->tipoVar == INT || node->tipoVar == VOID || node->ptr > 0){
                        size = 32;
                    }else{
                        size = 8;
                    }
                    variavelGlobalMemoria(size, node->varId);
                }
            }

            if(node->tipok == VECTOR){
                Dimensao *d = node->dimensao;
                int size = 0;

                while(d){
                    size = size + d->tam;
                    d = d->prox;
                }
                int s = declaraArray(node->varId, size, node->ehGlobal);
                setSRegisterInHash(node, s);
            }

            if(node->hashExpr){
                atrib = avaliarExpressao(node->hashExpr, globalHash, localHash, programa);
                int atribuicaoType, atribuicaoptr = atrib->ptr;

                if(atrib->tipoVar == CHAR){
                    atribuicaoType = CHAR;
                }else if(atrib->tipoVar == INT){
                    atribuicaoType = INT;
                }else if(atrib->tipoVar == STRING){
                    atribuicaoType = CHAR;
                    atribuicaoptr = 1;
                }else{
                    atribuicaoType = VOID;
                }

                if(globalHash == localHash){
                    setGlobalAtribuicaoVar(node->varId, atrib->atribuicao);
                }else{
                    if(atribuicaoType == CHAR && atribuicaoptr == 1){
                        atrib->str[strlen(atrib->str) - 1] = '\0';
                        strcpy(atrib->str, atrib->str + 1);
                        int regS = declararString(node->varId, atrib->str);
                        setSRegisterInHash(node, regS);
                        strcpy(node->string, atrib->str);
                    }else{
                        int regS = atribuicao(atrib->tipoReg, atrib->numReg);
                        setSRegisterInHash(node, regS);
                        setAssign(node, atrib->atribuicao);
                    }
                }
            }
            node = node->prox;
        }
    }
}

int traverseAST(Programa *programa){
    if(!programa){
        return -1;
    }

    imprimirComeco();
    printf("\n.data\n");
    definicao();
    lookForNodeInHashWithExpr(programa->hashTable, programa->hashTable, programa);
    printf(".text\n\n");
    Funcao *funcaoAtual = programa->listaFuncoes;

    while(funcaoAtual != NULL){
        for(int i = 0; i < 10; i++){
            freeReg(0, i);
        }

        for(int i = 0; i < 8; i++){
            freeReg(1, i);
        }
        HashNo *funcNode = getIdentifierNode(programa->hashTable, funcaoAtual->nome);
        funcao(funcaoAtual->nome);

        if(strcmp(funcaoAtual->nome, "main")){
            regTsv = calloc(10, sizeof(int));
            armazenarRegT(regTsv);
            armazenarNaPilha();
        }else{
            globalAtribuicaoVar();
        }
        parametroFuncao(funcaoAtual->nome, funcNode->qntParam);
        lookForNodeInHashWithExpr(programa->hashTable, funcaoAtual->hashTable, programa);
        Comando *comando = funcaoAtual->listaComando;

        while(comando != NULL){
            traverseASTCommand(comando, programa->hashTable, funcaoAtual->hashTable, programa, funcaoAtual);
            comando = comando->prox;
        }

        if(strcmp(funcaoAtual->nome, "main")){
            loadDaPilha();
            loadRegT(regTsv);
            free(regTsv);
            imprimirReturn();
        }
        funcaoAtual = funcaoAtual->prox;
    }

    return 0;
}

void freeAST(Programa *programa){
    if(!programa){
        return;
    }
    freeHash(programa->hashTable);
    Funcao *functions = programa->listaFuncoes;

    while(functions){
        Funcao *functions2 = functions->prox;
        Comando *cmd = functions->listaComando;

        while(cmd){
            Comando *cmd2 = cmd->prox;

            if(cmd->condicao){
                free(cmd->condicao);
            }

            if(cmd->ini){
                free(cmd->ini);
            }

            if(cmd->incrimenta){
                free(cmd->incrimenta);
            }

            if(cmd->imprimirAux){
                free(cmd->imprimirAux);
            }
            free(cmd);
            cmd = cmd2;
        }
        freeHash(functions->hashTable);

        if(functions->nome){
            free(functions->nome);
        }
        free(functions);
        functions = functions2;
    }
    free(programa);
}