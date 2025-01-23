#ifndef REGALLOC_H
#define REGALLOC_H

typedef void* Grafo;
typedef void* Vertice;
typedef void* Pilha;

static int spillStart;

typedef struct Vert {
    int indice, cor;
} *PtrVert;

typedef struct Grafo {
    int id, tam, regFis, primRegLog, *regLogAloc, **matAdj, **matAdjOri;
    PtrVert *vertices;
} *PtrGrafo;

typedef struct Pilha {
    int topo;
    PtrVert *vertices;
} *PtrPilha;

Grafo EcriarGrafo(int tam);
void setIdGrafo(Grafo grafo, int id) ;
void setRegFis(Grafo grafoParam, int regFis);
void setPrimRegLog(Grafo grafoParam, int primRegLog);
int getPrimRegLog(Grafo grafoParam);
void altMatAdj(Grafo grafoParam, int i, int j, int valor);
int** getMatAdj(Grafo grafoParam);
void setMatAdjOri(Grafo grafoParam);
void resetMatAdj(Grafo grafoParam);
int** getMatAdjOri(Grafo grafoParam);
int getTamGrafo(Grafo grafoParam);
int getRegFis(Grafo grafoParam);
Vertice getVertice(Grafo grafoParam, int indice);
void removerVertMatAdj(Grafo grafoParam, int indice);
void removerVertMaiorGrau(Grafo grafoParam, Pilha pilha, int ini, int tam);
void restVertMatAdj(Grafo grafoParam, int indice);
void criarInserirVert(Grafo grafoParam, int indice, int tamRegFis);
int regLogAloc(Grafo grafoParam, int indice);
Pilha criarPilha(int tamMax);
void limparPilha(Pilha pilhaParam);
void pushPilha(Pilha pilhaParam, Vertice vertParam);
int idNaPilha(Pilha pilhaParam, int indice);
void popPilha(Pilha pilhaParam);
void desempilhar(Pilha pilhaParam, Grafo grafoParam, int cores);
void exibirRelatorio(Grafo grafoParam);
void freeE(Grafo grafoParam, Pilha pilhaParam);

#endif