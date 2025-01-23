#ifndef _LIST_H
#define _LIST_H

#include <stdio.h>
#include <stdlib.h>

typedef struct listaNo{
    struct listaNo *prox;
    int id, comeco, fim, vida, regAtri;
} No;

typedef struct lista{
    No *ini, *ult;
    int regDisp, tam;
} Lista;

Lista *criarLista();
void inserirNo(Lista *l, int id, int comeco, int fim);
No *getNo(Lista *l, int id);
void deletarNo(Lista *l, int id);
void imprimirLista(Lista *l);
void freeLista(Lista *l);

#endif