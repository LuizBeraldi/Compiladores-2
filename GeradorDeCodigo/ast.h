#ifndef _AST_H
#define _AST_H

#include <stdio.h>
#include <stdlib.h>

enum tiposExpressao {
    BOP = 1001,
    UOP,
    TERNARY,
    ARRAY_CALL,
    FUNCTION_CALL,
    PRIMARIA
};
#define LISTA_EXP_COMANDO 9802

typedef struct programa {
    void **hashTable, *listaFuncoes, *definesExps, *dimensionsExps, *main;
} Programa;

typedef struct funcao {
    void **hashTable, *declarations, *listaComando, *prox;
    int retornaTipo, ptr;
    char *nome;
} Funcao;

typedef struct dimensao {
    int tam;
    void *exp;
    struct dimensao *prox;
} Dimensao;

typedef struct expParam {
    int tipo, ptr;
    void *exp;
    char *identificador;
    struct expParam *prox;
} ExpParam;

typedef struct expressao {
    int tipo, ptr, operador, atribuicao, preOuPos, inicioLista;
    Dimensao *dimensao;
    ExpParam *param;
    char identificador[256], string[512];
    struct expressao *proxExpr, *condicaoTernaria, *esq, *dir;
} Expressao;

typedef struct comando {
    int tipo, visitado;
    Expressao *condicao;
    void *entao, *prox, *elseS;
    Expressao *ini, *incrimenta, *imprimirAux;
    char *string, *identificador;
} Comando;

typedef struct resultadoExpr {
    int tipoVar, ptr, atribuicao, tipoReg, numReg;
    char str[256];
    void *NoAuxid;
} ResultadoExpr;

Programa *createProgram(void **hash, void *listaFuncoes, void *main);
Funcao *createFunction(void **hash, int retornaTipo, int ptr, char *nome, void *listaComando, void *prox);
ExpParam *createExpParam(Expressao *exp, ExpParam *prox);
Dimensao *createDimension(int tam);
int countDimension(void *d);
Dimensao *createDimensionWithExp(Expressao *exp);
void setDimensionExpression(Expressao *expressao, Dimensao *dimensao);
Expressao *createExpression(int tipo, int operador, void *esq, void *dir);
Comando *createIfStatement(Expressao *condicao, void *entao, void *elseS, void *prox);
Comando *createDoWhileStatement(Expressao *condicao, void *entao, void *prox);
Comando *createWhileStatement(Expressao *condicao, void *entao, void *prox);
Comando *createForStatement(Expressao *ini, Expressao *condicao, Expressao *incrementa, void *entao, void *prox);
Comando *createPrintStatement(char *string, Expressao *imprimirAux, void *prox);
Comando *createScanStatement(char *string, char *identificador, void *prox);
Comando *createReturnStatement(Expressao *expressao, void *prox);
Comando *createExitStatement(Expressao *expressao, void *prox);
Comando *createCommandExpression(Expressao *expressao, void *prox);
ResultadoExpr *createResultExpression(int tipo, int ptr, int valor);
ResultadoExpr *evalExpression(Expressao *expressao, void **globalHash, void **localHash, Programa *programa);
int traverseAST(Programa *programa);
void freeAST(Programa *programa);

#endif