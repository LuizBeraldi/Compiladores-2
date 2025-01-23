#include "reg.h"
#include "est.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

static Grafo grafo;
static Pilha pilha;

void criarGrafo(){
    int maiorReg, buffer;
    fscanf(stdin, "Grafo %d:\n", &buffer);
    fscanf(stdin, "K=%d\n", &buffer);

    while(1){
        fscanf(stdin, "%d --> ", &maiorReg);

        while(fgetc(stdin) != '\n'){
            fseek(stdin, -1, SEEK_CUR);
            fscanf(stdin, "%d", &buffer);

            if(feof(stdin)){
                break;
            }
        }

        if(feof(stdin)){
            break;
        }
    }
    grafo = EcriarGrafo(maiorReg + 1);
    fseek(stdin, 0, SEEK_SET);
}

void regB(){
    int idGrafo, qntReg, regAtual, regInter, primIte = 1;
    criarGrafo();

    fscanf(stdin, "Grafo %d:\n", &idGrafo);
    fscanf(stdin, "K=%d\n", &qntReg);

    setIdGrafo(grafo, idGrafo);
    setRegFis(grafo, qntReg);
    
    printf("Graph %d -> Physical Registers: %d\n", idGrafo, qntReg);
    printf("----------------------------------------\n");

    while(1){
        fscanf(stdin, "%d --> ", &regAtual);

        if(primIte){
            setPrimRegLog(grafo, regAtual);
            primIte = 0;
        }
        criarInserirVert(grafo, regAtual, qntReg);

        while(fgetc(stdin) != '\n'){
            fseek(stdin, -1, SEEK_CUR);
            fscanf(stdin, "%d", &regInter);

            altMatAdj(grafo, regAtual, regInter, 1);

            if(feof(stdin)){
                break;
            }
        }
        if(feof(stdin)){
            break;
        }
    }
}

void regS(){
    int i, j, k, inicio, tam, grau, **matAdj, modPilha, menorGrau, indicePush, spill;
    k = getRegFis(grafo);
    inicio = getPrimRegLog(grafo);
    tam = getTamGrafo(grafo);
    matAdj = getMatAdj(grafo);
    setMatAdjOri(grafo);
    pilha = criarPilha(tam);

    while(k > 1){
        printf("----------------------------------------\n");
        printf("K = %d\n\n", k);

        limparPilha(pilha);
        modPilha = 1;
        resetMatAdj(grafo);

        while(modPilha){
            modPilha = 0;
            menorGrau = tam;

            for(i = inicio; i < tam; i++){
                grau = 0;

                if(regLogAloc(grafo, i)){
                    for(j = 0; j < tam; j++){
                        if(matAdj[i][j] == 1){
                            grau++;
                        }
                    }

                    if(grau < menorGrau){
                        if(idNaPilha(pilha, i) == 0){
                            modPilha = 1;
                            menorGrau = grau;
                            indicePush = i;
                        }
                    }
                }
            }

            if(modPilha == 1){
               if(menorGrau >= k){
                    removerVertMaiorGrau(grafo, pilha, inicio, tam);
                }else{
                    pushPilha(pilha, getVertice(grafo, indicePush));
                    removerVertMatAdj(grafo, indicePush);
                    printf("Push: %d\n", indicePush);
                }
            }
        }
        resetMatAdj(grafo);
        desempilhar(pilha, grafo, k);
        k--;
    }
    exibirRelatorio(grafo);
    freeE(grafo, pilha);
}