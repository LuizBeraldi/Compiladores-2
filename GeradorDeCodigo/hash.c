#include "hash.h"
#include "ast.h"

extern int contDimensao(void *dimensao);

void **criarHash(){
    void **hashTable = calloc(TAM_HASH, sizeof(HashNo));

    if(!hashTable){
        printf("Erro ao alocar memoria para hash\n");
        exit(1);
    }

    return hashTable;
}

int hash(char *value){
    int hash = 0;

    for(int i = 0; i < strlen(value); i++){
        hash += value[i] *(i + 1);
    }

    return hash % TAM_HASH;
}

void *inserirHash(void **hashTable, char *varId, int currenttipo, int ptr){
    int index = hash(varId);
    HashNo *aux = calloc(1, sizeof(HashNo));
    aux->tipoVar = currenttipo;
    aux->varId = calloc(strlen(varId) + 1, sizeof(char));
    strcpy(aux->varId, varId);
    aux->ptr = ptr;
    aux->atribuicao = 1;
    aux->regS = -1;
    HashNo *ini =(HashNo *)hashTable[index];

    if(!ini){
        hashTable[index] = aux;
    }else{
        while(ini->prox)
            ini = ini->prox;
        ini->prox = aux;
    }

    return aux;
}

void setEhConstante(void *no){
    HashNo *aux = no;
    aux->ehConstante = 1;
}

void setEhGlobal(void *no){
    HashNo *aux = no;
    aux->ehGlobal = 1;
}

void setQntParam(void *no, int qntdParams){
    HashNo *aux = no;
    aux->qntParam = qntdParams;
}

void setParam(void *no, Param *p){
    HashNo *aux = no;
    aux->param = p;
}

void setAtrib(void *no, int assign){
    HashNo *aux = no;
    aux->atribuicao = assign;
}

void setDimen(void *no, void *dimensao){
    HashNo *aux = no;
    aux->dimensao = dimensao;
    int qntdDimen = contDimensao(dimensao);
    aux->qntDimen = qntdDimen;

    if(qntdDimen > 0){
        aux->tipok = VECTOR;
    }else{
        aux->tipok = VAR;
    }
}

void setTipo(void *no, int tipok){
    HashNo *aux = no;
    aux->tipok = tipok;
}

void setHashExpr(void *no, void *hashExpr){
    HashNo *aux = no;
    aux->hashExpr = hashExpr;
}

void setRegSHash(void *no, int regS){
    HashNo *aux = no;
    aux->regS = regS;
}

int regSHash(void *no){
    HashNo *aux = no;
    return aux->regS;
}

int valorHash(void **hashTable, char *varId, int currenttipo){
    if(!hashTable){
        return 0;
    }
    int index = hash(varId), ocorrencias = 0;
    HashNo *ini =(HashNo *)hashTable[index];

    while(ini){
        if(!strcmp(varId, ini->varId)){
            ocorrencias++;

            if(ocorrencias == 1){
                continue;
            }

            if(currenttipo == ini->tipoVar){
                freeHash(hashTable);
                exit(1);
            }else{
                freeHash(hashTable);
                exit(1);
            }
        }
        ini = ini->prox;
    }

    return 0;
}

Param *criarParamH(int tipo, char *identificador, int ptr, void *prox){
    Param *novoParam = calloc(1, sizeof(Param));
    novoParam->tipok = tipo;
    novoParam->identificador = identificador;
    novoParam->ptr = ptr;
    novoParam->prox = prox;

    return novoParam;
}

HashNo *idNo(void **hashTable, char *id){
    if(!hashTable){
        return NULL;
    }
    int index = hash(id);
    HashNo *ini =(HashNo *)hashTable[index];

    while(ini){
        if(!strcmp(id, ini->varId)){
            return ini;
        }
        ini = ini->prox;
    }

    return NULL;
}

char *tipoE(int tipo, int ptr){
    char novoTipo[50];

    if(tipo == 275 || tipo == 309){
        strcpy(novoTipo, "int");
    }else if(tipo == 276 || tipo == 313){
        strcpy(novoTipo, "char");
    }else if(tipo == 277){
        strcpy(novoTipo, "void");
    }else if(tipo == 312){
        strcpy(novoTipo, "char*");
    }

    for(int i = 0; i < ptr; i++){
        strcat(novoTipo, "*");
    }
    char *aux = calloc(strlen(novoTipo) + 1, sizeof(char));
    strcpy(aux, novoTipo);
    
    return aux;
}

void imprimirProgram(void *AST){
    void **hash = NULL;

    if(AST){
        Programa *ast =(Programa *)AST;
        printf("AST %p\n", ast);
        hash = ast->hashTable;
    }

    for(int i = 0; i < TAM_HASH; i++){
        HashNo *no =(HashNo *)hash[i];

        while(no){
            printf("%d Global hash %s %d\n", i, no->varId, no->tipoVar);
            no = no->prox;
        }
    }
    printf("\n");
    Funcao *func =(Funcao *)((Programa*)AST)->listaFuncoes;

    while(func){
        printf("Function %s %d hash %p\n", func->nome, func->retornaTipo, func->hashTable);

        for(int i = 0; i < TAM_HASH; i++){
            HashNo *no =(HashNo *)func->hashTable[i];

            while(no){
                printf("%d Local hash var %s %d\n", i, no->varId, no->tipoVar);
                no = no->prox;
            }
        }
        printf("\n");
        Comando *cmd =(Comando *)func->listaComando;

        while(cmd){
            printf("Command %d\n", cmd->tipo);
            cmd = cmd->prox;
        }
        printf("\n");
        func = func->prox;
    }
}

void freeHash(void **hashTable){
    if(!hashTable){
        return;
    }

    for(int i = 0; i < TAM_HASH; i++){
        if(!hashTable[i]){
            continue;
        }
        HashNo *ini = hashTable[i];

        while(ini){
            HashNo *aux = ini->prox;

            if(ini->param){
                Param *p = ini->param;

                while(p){
                    Param *auxP = p->prox;
                    free(p);
                    p = auxP;
                }
            }

            if(ini->varId){
                free(ini->varId);
            }
            ini->varId = NULL;
            free(ini);
            ini = aux;
        }
        hashTable[i] = NULL;
    }
    free(hashTable);
    hashTable = NULL;
}