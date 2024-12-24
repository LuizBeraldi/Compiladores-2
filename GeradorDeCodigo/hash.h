#ifndef _HASH_H_
#define _HASH_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TAM_HASH 269

/*
./gerador < entradas.gerador/quicksort.txt > saidas.gerador/quicksort.asm 
./gerador < entradas.gerador/fatorial.txt > saidas.gerador/fatorial.asm
./gerador < entradas.gerador/triangulo.txt > saidas.gerador/triangulo.asm 
./gerador < entradas.gerador/comparacao.txt > saidas.gerador/comparacao.asm 
*/

#define VAR 1
#define FUNCTIONN 2
#define VECTOR 3

typedef struct no {
    int tipoVar, ptr, atribuicao, ehConstante, ehGlobal, tipok, qntParam, qntDimen, atribuicaoLinha, atribuicaoColuna, regS;
    char *varId, string[256];
    void *dimensao, *param, *hashExpr;
    struct no *prox;
} HashNo;

typedef struct param {
    int tipok, ptr, tipoParam;
    char *identificador;
    struct param *prox;
} Param;

void **criarHash();
int hash(char *valor);
void *inserirHash(void **hashTable, char *varId, int tipoAtual, int ptr);
void setEhConstante(void *no);
void setEhGlobal(void *no);
void setQntParam(void *no, int qntParam);
void setParam(void *no, Param *p);
void setAtrib(void *no, int atribuicao);
void setDimen(void *no, void *dimensao);
void setTipo(void *no, int tipok);
void setHashExpr(void *no, void *hashExpr);
void setRegSHash(void *no, int regS);
int regSHash(void *no);
int valorHash(void **hashTable, char *varId, int tipoAtual);
Param *criarParamH(int tipo, char *identificador, int ptr, void *prox);
HashNo *idNo(void **hashTable, char *id);
char *tipoE(int tipo, int ptr);
void imprimirProgram(void *AST);
void freeHash(void **hashTable);

#endif