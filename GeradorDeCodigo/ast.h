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

Programa *criarPrograma(void **hash, void *listaFuncoes, void *main);
Funcao *criarFuncao(void **hash, int retornaTipo, int ptr, char *nome, void *listaComando, void *prox);
ExpParam *criarExpressaoParametro(Expressao *exp, ExpParam *prox);
Dimensao *criarDimensao(int tam);
int contDimensao(void *d);
Dimensao *criarDimensaoExpressao(Expressao *exp);
void setDimensaoExpressao(Expressao *expressao, Dimensao *dimensao);
Expressao *criarExpressao(int tipo, int operador, void *esq, void *dir);
Comando *criarSe(Expressao *condicao, void *entao, void *elseS, void *prox);
Comando *criarFaçaEnquanto(Expressao *condicao, void *entao, void *prox);
Comando *criarEnquanto(Expressao *condicao, void *entao, void *prox);
Comando *criarPara(Expressao *ini, Expressao *condicao, Expressao *incrementa, void *entao, void *prox);
Comando *criarImprimir(char *string, Expressao *imprimirAux, void *prox);
Comando *criarScan(char *string, char *identificador, void *prox);
Comando *criarReturn(Expressao *expressao, void *prox);
Comando *criarExit(Expressao *expressao, void *prox);
Comando *criarComandoExpressao(Expressao *expressao, void *prox);
ResultadoExpr *criarResultadoExpressao(int tipo, int ptr, int valor);
ResultadoExpr *avaliarExpressao(Expressao *expressao, void **globalHash, void **localHash, Programa *programa);
int traverseAST(Programa *programa);
void freeAST(Programa *programa);

#endif