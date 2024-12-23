#ifndef _AST_H
#define _AST_H

#include <stdio.h>
#include <stdlib.h>
#include "hash.h"
#include <math.h>

enum tiposExpressao {
    ADITIVA = 1001,
    MULTIPLICATIVA,
    UNARIA,
    PRIMARIA
};

#define FUNCTION 6666

typedef struct expressao {
    int tipo, operador;
    char *e_string;
    struct expressao *esq, *dir;
    void *funcao;
} Expressao;

typedef struct expressaoResultado {
    int tipo, linha, coluna;
    float r_float, **matriz;
    char *r_string;
} ExpressaoResultado;

typedef struct funcao {
    int tipo;
    Expressao *expressao;
} Funcao;

Expressao *criarExpressao                   (int tipo, int op, char *s, Expressao *esq, Expressao *dir);
ExpressaoResultado *criarExpressaoResultado (int tipo, float r_float, char *r_string);
Funcao *criarFuncao                         (int tipo, Expressao *expressao);
ExpressaoResultado *avaliarExpressao        (Expressao *expressao, void **hash);
ExpressaoResultado *avaliarFuncao           (Funcao *funcao, void **hash);
float **somaMatrix                          (float **a, float **b, int aLin, int aCol, int bLin, int bCol, int op, void **hash);
float **multMatrix                          (float **a, float **b, int aLin, int aCol, int bLin, int bCol, void **hash);

#endif