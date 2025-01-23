#include "est.h"
#include <stdio.h>
#include <stdlib.h>

Grafo EcriarGrafo(int tam){
    int i, j;
    PtrGrafo nGrafo = malloc(sizeof(struct Grafo));
    nGrafo->tam = tam;
    nGrafo->vertices = malloc(tam * (sizeof(struct Vert)));
    nGrafo->regLogAloc = malloc(tam * (sizeof(int)));
    nGrafo->matAdj = malloc(tam * sizeof(int *));

    for(i = 0; i < tam; i++){
        nGrafo->matAdj[i] = malloc(tam * sizeof(int));
    }
    nGrafo->matAdjOri = malloc(tam * sizeof(int *));

    for(i = 0; i < tam; i++){
        nGrafo->matAdjOri[i] = malloc(tam * sizeof(int));
    }

    for(i = 0; i < tam; i++){
        for(j = 0; j < tam; j++){
            nGrafo->matAdj[i][j] = 0;
        }
    }

    for(i = 0; i < tam; i++){
        nGrafo->regLogAloc[i] = 0;
    }

    spillStart = 0;

    return nGrafo;
}

void setIdGrafo(Grafo grafoParam, int id){
PtrGrafo grafo = (PtrGrafo) grafoParam;
    grafo->id = id;
}

void setRegFis(Grafo grafoParam, int regFis){
    PtrGrafo grafo = (PtrGrafo) grafoParam;
    grafo->regFis = regFis;
}

void setPrimRegLog(Grafo grafoParam, int primRegLog){
    PtrGrafo grafo = (PtrGrafo) grafoParam;
    grafo->primRegLog = primRegLog;
}

int getPrimRegLog(Grafo grafoParam){
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    return grafo->primRegLog;
}

void altMatAdj(Grafo grafoParam, int i, int j, int valor){
    PtrGrafo grafo = (PtrGrafo) grafoParam;
    grafo->matAdj[i][j] = valor;
    grafo->regLogAloc[i] = 1;
}

int **getMatAdj(Grafo grafoParam){
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    return grafo->matAdj;
}

int getTamGrafo(Grafo grafoParam){
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    return grafo->tam;
}

int getRegFis(Grafo grafoParam){
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    return grafo->regFis;
}

int **getMatAdjOri(Grafo grafoParam){
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    return grafo->matAdjOri;
}

void setMatAdjOri(Grafo grafoParam){
    int i, j;
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    for(i = 0; i < grafo->tam; i++){
        for(j = 0; j < grafo->tam; j++){
            grafo->matAdjOri[i][j] = grafo->matAdj[i][j];
        }
    }
}

void resetMatAdj(Grafo grafoParam){
    int i, j;
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    for(i = 0; i < grafo->tam; i++){
        for(j = 0; j < grafo->tam; j++){
            grafo->matAdj[i][j] = grafo->matAdjOri[i][j];
        }
    }
}

Vertice getVertice(Grafo grafoParam, int indice){
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    return grafo->vertices[indice];
}

void removerVertMatAdj(Grafo grafoParam, int indice){
    int i;
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    for(i = 0; i < grafo->tam; i++){
        grafo->matAdj[i][indice] = 0;
    }
}

void removerVertMaiorGrau(Grafo grafoParam, Pilha pilha, int ini, int tam){
    int i, j, grau, maiorGrau, indiceRemover;
    PtrGrafo grafo = (PtrGrafo) grafoParam;
    maiorGrau = 0;

    for(i = ini; i < tam; i++){
        grau = 0;
        for(j = 0; j < tam; j++){
            if (grafo->matAdj[i][j] == 1){
                grau++;
            }
        }
        if (grau > maiorGrau){
            maiorGrau = grau;
            indiceRemover = i;
        }
    }

    for(i = 0; i < grafo->tam; i++){
        grafo->matAdj[indiceRemover][i] = 0;
        grafo->matAdj[i][indiceRemover] = 0;
    }
    pushPilha(pilha, getVertice(grafoParam, indiceRemover));
    printf("Push: %d *\n", indiceRemover);
}

void restVertMatAdj(Grafo grafoParam, int indice){
    int i;
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    for(i = 0; i < grafo->tam; i++){
        grafo->matAdj[indice][i] = grafo->matAdjOri[indice][i];
        grafo->matAdj[i][indice] = grafo->matAdjOri[i][indice];
    }
}

int regLogAloc(Grafo grafoParam, int indice){
    PtrGrafo grafo = (PtrGrafo) grafoParam;

    return grafo->regLogAloc[indice];
}

void criarInserirVert(Grafo grafoParam, int indice, int tamRegFis){
    int i;
    PtrGrafo grafo = (PtrGrafo) grafoParam;
    PtrVert nVert = malloc(sizeof(struct Vert));
    nVert->indice = indice;
    grafo->vertices[indice] = nVert;
}

Pilha criarPilha(int tamMax){
    PtrPilha nPilha = malloc(sizeof(struct Pilha));
    nPilha->vertices = malloc(tamMax * (sizeof(struct Vert)));
    nPilha->topo = -1;

    return nPilha;
}

void limparPilha(Pilha pilhaParam){
    PtrPilha pilha = (PtrPilha) pilhaParam;
    pilha->topo = -1;
}

void pushPilha(Pilha pilhaParam, Vertice vertParam){
    PtrPilha pilha = (PtrPilha) pilhaParam;
    PtrVert vertice = (PtrVert) vertParam;
    pilha->topo++;
    pilha->vertices[pilha->topo] = vertice;
}

int idNaPilha(Pilha pilhaParam, int indice){
    int i;
    PtrPilha pilha = (PtrPilha) pilhaParam;
    for(i = 0; i < (pilha->topo) + 1; i++){
        if (pilha->vertices[i]->indice == indice){
            return 1;
        }
    }

    return 0;
}

void popPilha(Pilha pilhaParam){
    PtrPilha pilha = (PtrPilha) pilhaParam;
    printf("Pop: %d", pilha->vertices[pilha->topo]->indice);
    pilha->topo--;
}

void util_pintar(PtrGrafo grafo, int regLog, int cor){
    int i;
    for(i = grafo->primRegLog; i < grafo->tam; i++){
        if(grafo->matAdj[regLog][i] == 1){
            grafo->matAdj[i][cor] = 1;
        }
    } 
}

void desempilhar(Pilha pilhaParam, Grafo grafoParam, int cores){
    int i, j, topo, cor, regLog, flgSpill, flgOp;
    PtrPilha pilha = (PtrPilha) pilhaParam;
    PtrGrafo grafo = (PtrGrafo) grafoParam;
    i = 0;

    while(pilha->topo > -1){
        topo = pilha->vertices[pilha->topo]->indice;
        flgOp = 0;
        
        for(j = 0; j < grafo->regFis; j++){
            cor = j;
            if(grafo->matAdj[topo][j] == 0){
               if(cor < cores){
                    regLog = topo;
                    popPilha(pilha);
                    printf(" -> %d\n", cor);
                    util_pintar(grafo, regLog, cor);
                    flgOp = 1;
                }else{
                    if(cores > spillStart){
                        spillStart = cores;
                    }
                    popPilha(pilha);
                    printf(" -> NO COLOR AVAILABLE\n");
                    flgSpill = 1;
                    limparPilha(pilhaParam);
                    flgOp = 1;
                }
                j = grafo->regFis;
            }
        }
        if(flgOp == 0){
            if(cores > spillStart){
                spillStart = cores;
            }
            popPilha(pilha);
            printf(" -> NO COLOR AVAILABLE\n");
            flgSpill = 1;
            limparPilha(pilhaParam);
            flgOp = 1;
            j = grafo->regFis;
        }
        i++;
    }
}

void exibirRelatorio(Grafo grafoParam){
    int i, k;
    spillStart++;
    PtrGrafo grafo = (PtrGrafo) grafoParam;
    printf("----------------------------------------\n");
    printf("----------------------------------------");
    k = grafo->regFis;

    for(i = k; i > 1; i--){
        printf("\nGraph %d -> K = ", grafo->id);
        if(k < 10){
            printf(" ");
        }
        printf("%d: ", k);

       if(i >= spillStart){
            printf("Successful Allocation");
        }else{
            printf("SPILL");
        }
        k--;
    }
}

void freeE(Grafo grafoParam, Pilha pilhaParam){
    int i;
    PtrGrafo grafo = (PtrGrafo) grafoParam;
    PtrPilha pilha = (PtrPilha) pilhaParam;
    PtrVert verticeAuxiliar;
    int* ponteiroIntAuxiliar_1;
    int* ponteiroIntAuxiliar_2;

    for(i = 0; i < pilha->topo + 1; i++){
        free(pilha->vertices[i]);
    }
    free(pilha->vertices);
    free(pilha);

    for(i = grafo->primRegLog; i < grafo->tam; i++){
        if(grafo->regLogAloc[i]){
            verticeAuxiliar = grafo->vertices[i];
            free(verticeAuxiliar);
        }
    }

    for(i = 0; i < grafo->tam; i++){
        ponteiroIntAuxiliar_1 = grafo->matAdj[i];
        ponteiroIntAuxiliar_2 = grafo->matAdjOri[i];
        free(ponteiroIntAuxiliar_1);
        free(ponteiroIntAuxiliar_2);
    }
    free(grafo->matAdj);
    free(grafo->matAdjOri);
    free(grafo->regLogAloc);
    free(grafo->vertices);
    free(grafo);
}