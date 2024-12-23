#ifndef _HASH_H_
#define _HASH_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TAM_HASH 221
#define TAM_MAX_MAT 10
#define MAX_MAT 20
#define TEMP 999999.0

typedef struct no {
    int tipoVar, linhaMatriz, colunaMatriz;
    char *varId;
    float valorId, **matriz;
    struct no *prox;
} NoHash;

void **criarHash            ();
int hash                    (char *valor);
NoHash *valorEmHash         (void **ht, char *valor);
void *inserirHash           (void **ht, char *varId, float valorId, int tipoAtual);
float **criarMatriz         ();
void fixMatriz              (float **m, int linha, int coluna);
void mostrarMatriz          (float **m, int linha, int coluna, int floatPrecisao);
void freeMatriz             (float **m);
NoHash *getIdentificadorNo  (void **ht, char *id);
void mostrarSimbolos        (void **ht);
void removerNo              (void **ht, char *id);
void freeHash               (void **ht);

#endif