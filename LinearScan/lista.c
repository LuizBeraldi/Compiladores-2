#include "lista.h"

Lista *criarLista(){
    Lista *l = calloc(1, sizeof(Lista));
    l->ini = NULL;
    l->ult = NULL;

    return l;
}

void inserirNo(Lista *l, int id, int comeco, int fim){
    No *n = calloc(1, sizeof(No));
    l->tam++;
    n->id = id;
    n->comeco = comeco;
    n->fim = fim;
    n->vida = fim - comeco;
    n->prox = NULL;

   if(l->ini != NULL){
        l->ult->prox = n;
        l->ult = n;
    }else{
        l->ini = n;
        l->ult = n;
    }
}

No *getNo(Lista *l, int id){
    No *atual = l->ini;

    while(atual){
        if(atual->id == id){
            return atual;
        }
        atual = atual->prox;
    }

    return NULL;
}

void deletarNo(Lista *l, int id){
    No *prev = NULL, *atual = l->ini;

    while(atual){
        if(atual->id == id){
           if(prev != NULL){
                prev->prox = atual->prox;
            }else{
                l->ini = atual->prox;
                if(l->ult == atual){
                    l->ult = NULL;
                }
            }
            free(atual);

            return;
        }
        prev = atual;
        atual = atual->prox;
    }
}

void imprimirLista(Lista *l){
    No *atual = l->ini;
    printf("size %d | %d\n", l->tam, l->regDisp);

    while(atual){
        printf("id: %d, start: %d, end: %d, lifeSpan: %d\n", atual->id, atual->comeco, atual->fim, atual->vida);
        atual = atual->prox;
    }
}

void freeLista(Lista *l){
    No *atual = l->ini;

    while(atual){
        No *prox = atual->prox;
        free(atual);
        atual = prox;
    }
    free(l);
}