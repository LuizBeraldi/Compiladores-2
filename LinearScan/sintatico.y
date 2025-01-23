%{

#include <stdio.h>
#include <stdlib.h>
#include "math.h"
#include <string.h>
#include "lista.h"

extern int yylex();
void yyerror(void *s);
extern void yylex_destroy();

Lista *l = NULL;

%}

%token MyEof
%token K
%token ASSIGN
%token ARROW
%token REG_ID
%token NUM_INT

%start RegAlloc

%%

RegAlloc: K ASSIGN NUM_INT Vida MyEof {
    if(l)
        l->regDisp = $3;
    return 0;
} ;

Vida: REG_ID ARROW NUM_INT NUM_INT  
    {
        if(!l){
            l = criarLista();
        }
        inserirNo(l, $1, $3, $4);
    }
    Vida { } 
    | { } ;

%%

void yyerror(void *s){
    printf("Error: %s\n", (char*)s);
}

int main(){
    yyparse();
    char *resultados = calloc(8192, sizeof(char));

    for(int k = l->regDisp; k > 1; k--){
        int *disp = calloc(l->regDisp, sizeof(int));

        for(int i = 0; i < l->regDisp; i++){
            disp[i] = 0;
        }
        int *spills = calloc(l->tam, sizeof(int)), qntSpills = 0, spillIte = 0;
        No *atual = l->ini;

        while (atual){
            int usado = -1;

            for(int i = 0; i < l->regDisp; i++){
                if(disp[i]){
                    if(getNo(l, disp[i])->fim <= atual->comeco){
                        usado = i;
                        disp[i] = atual->id;
                        atual->regAtri = i;

                        break;
                    }
                }else{
                    usado = i;
                    disp[i] = atual->id;
                    atual->regAtri = i;

                    break;
                }
            }            

            if(usado == -1){
                spills[spillIte] = 1;
                qntSpills++;
                No *fazerSpill = atual;
                int spilled = -1, melhorFim = atual->fim, menorSpan = atual->vida, maisRecente = atual->id;

                for(int i = 0; i < l->regDisp; i++){
                    No *emUso = getNo(l, disp[i]);

                    if(emUso->fim <= melhorFim){
                        if(emUso->fim == melhorFim && emUso->vida < menorSpan){
                            spilled = i;
                            fazerSpill = emUso;
                            menorSpan = emUso->vida;
                            maisRecente = emUso->id;
                        }else{
                            if(emUso->fim == melhorFim && emUso->vida == fazerSpill->vida && emUso->id > maisRecente){
                                spilled = i;
                                fazerSpill = emUso;
                                maisRecente = emUso->id;
                            }
                        }
                    }else{
                        spilled = i;
                        fazerSpill = emUso;
                        melhorFim = emUso->fim;
                        menorSpan = emUso->vida;
                        maisRecente = emUso->id;
                    }
                }
                fazerSpill->regAtri = -1;

                if(spilled != -1){
                    disp[spilled] = atual->id;
                    atual->regAtri = spilled;
                }
            }
            atual = atual->prox;
            spillIte++;
        }
        printf("K = %d\n\n", k);

        for(int i = 0; i < l->tam; i++){
            No *atual = getNo(l, i+1);

            if(atual->regAtri != -1){
                printf("vr%d: %d\n", i+1, atual->regAtri);
            }else{
                printf("vr%d: SPILL\n", i+1);
            }
        }
        printf("----------------------------------------\n");
        char *auxStr = calloc(1024, sizeof(char));

        if(qntSpills != 0){
            sprintf(auxStr, "\nK = %d: SPILL on interation(s): ", k);
            int rep = 0;

            for(int s = 0; s < l->tam; s++){
                if(spills[s] == 0){
                    continue;
                }
                char *numStr = calloc(5, sizeof(char));
                rep++;
                sprintf(numStr, "%d", s);

                if(rep != qntSpills){
                    strcat(auxStr, numStr);
                    strcat(auxStr, ", ");
                }else{
                    strcat(auxStr, numStr);
                }
                free(numStr);
            }
        }else{
            sprintf(auxStr, "\nK = %d: Successful Allocation", k);
        }

        strcat(resultados, auxStr);
        free(auxStr);
        l->regDisp = k - 1;
        free(spills);
        free(disp);
    }

    printf("----------------------------------------");
    printf("%s", resultados);
    free(resultados);
    
    freeLista(l);
    
    yylex_destroy();

    return 0;
}