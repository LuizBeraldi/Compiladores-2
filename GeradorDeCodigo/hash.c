#include "hash.h"
#include "ast.h"

extern int countDimension(void *dimensao);

void **createHash() {
    void **hashTable = calloc(TAM_HASH, sizeof(HashNo));
    if (!hashTable) {
        printf("Erro ao alocar memoria para hash\n");
        exit(1);
    }
    return hashTable;
}

int hash(char *value) {
    int hash = 0;
    for (int i = 0; i < strlen(value); i++)
        hash += value[i] * (i + 1);
    return hash % TAM_HASH;
}

void *insertHash(void **hashTable, char *varId, int currenttipo, int ptr) {
    int index = hash(varId);
    HashNo *aux = calloc(1, sizeof(HashNo));
    aux->tipoVar = currenttipo;
    aux->varId = calloc(strlen(varId) + 1, sizeof(char));
    strcpy(aux->varId, varId);
    aux->ptr = ptr;
    aux->atribuicao = 1;
    aux->regS = -1;

    HashNo *head = (HashNo *)hashTable[index];
    if (!head) {
        hashTable[index] = aux;
    } else {
        while (head->prox)
            head = head->prox;
        head->prox = aux;
    }
    return aux;
}

void setIsConstant(void *no) {
    HashNo *aux = no;
    aux->isConstant = 1;
}

void setIsGlobal(void *no) {
    HashNo *aux = no;
    aux->ehGlobal = 1;
}

void setQntdParams(void *no, int qntdParams) {
    HashNo *aux = no;
    aux->qntParam = qntdParams;
}

void setParam(void *no, Param *p) {
    HashNo *aux = no;
    aux->param = p;
}

void setAssign(void *no, int assign) {
    HashNo *aux = no;
    aux->atribuicao = assign;
}

void setDimensions(void *no, void *dimensao) {
    HashNo *aux = no;
    aux->dimensao = dimensao;
    int qntdDimen = countDimension(dimensao);
    aux->qntDimen = qntdDimen;
    if (qntdDimen > 0) {
        aux->tipok = VECTOR;
    } else {
        aux->tipok = VAR;
    }
}

void setKind(void *no, int tipok) {
    HashNo *aux = no;
    aux->tipok = tipok;
}

void setHashExpr(void *no, void *hashExpr) {
    HashNo *aux = no;
    aux->hashExpr = hashExpr;
}

void setSRegisterInHash(void *no, int regS) {
    HashNo *aux = no;
    aux->regS = regS;
}

int getSRegisterFromHash(void *no) {
    HashNo *aux = no;
    return aux->regS;
}

int lookForValueInHash(void **hashTable, char *varId, int currenttipo) {
    if (!hashTable) return 0;
    int index = hash(varId);
    int ocorrencias = 0;
    HashNo *head = (HashNo *)hashTable[index];
    while (head) {
        if (!strcmp(varId, head->varId)) {
            ocorrencias++;
            if (ocorrencias == 1) continue;
            if (currenttipo == head->tipoVar) {
                freeHash(hashTable);
                exit(1);
            } else {
                freeHash(hashTable);
                exit(1);
            }
        }
        head = head->prox;
    }
    return 0;
}

Param *createParam(int tipo, char *identificador, int ptr, void *prox) {
    Param *newParam = calloc(1, sizeof(Param));
    newParam->tipok = tipo;
    newParam->identificador = identificador;
    newParam->ptr = ptr;
    newParam->prox = prox;
    return newParam;
}

HashNo *getIdentifierNode(void **hashTable, char *id) {
    if (!hashTable) return NULL;
    int index = hash(id);
    HashNo *head = (HashNo *)hashTable[index];
    while (head) {
        if (!strcmp(id, head->varId)) return head;
        head = head->prox;
    }
    return NULL;
}

char *getExactType(int tipo, int ptr) {
    char newtipo[50];
    switch (tipo) {
        case 275:
        case 309:
            strcpy(newtipo, "int");
            break;
        case 276:
        case 313:
            strcpy(newtipo, "char");
            break;
        case 277:
            strcpy(newtipo, "void");
            break;
        case 312:
            strcpy(newtipo, "char*");
            break;
        default:
            break;
    }
    for (int i = 0; i < ptr; i++) strcat(newtipo, "*");
    char *aux = calloc(strlen(newtipo) + 1, sizeof(char));
    strcpy(aux, newtipo);
    return aux;
}

void printProgram(void *AST) {
    void **hash = NULL;
    if (AST) {
        Programa *ast = (Programa *)AST;
        printf("AST %p\n", ast);
        hash = ast->hashTable;
    }
    for (int i = 0; i < TAM_HASH; i++) {
        HashNo *no = (HashNo *)hash[i];
        while (no) {
            printf("%d Global hash %s %d\n", i, no->varId, no->tipoVar);
            no = no->prox;
        }
    }

    printf("\n");
    Funcao *func = (Funcao *)((Programa*)AST)->listaFuncoes;
    while (func) {
        printf("Function %s %d hash %p\n", func->nome, func->retornaTipo, func->hashTable);

        for (int i = 0; i < TAM_HASH; i++) {
            HashNo *no = (HashNo *)func->hashTable[i];
            while (no) {
                printf("%d Local hash var %s %d\n", i, no->varId, no->tipoVar);
                no = no->prox;
            }
        }
        printf("\n");
        Comando *cmd = (Comando *)func->listaComando;
        while (cmd) {
            printf("Command %d\n", cmd->tipo);
            cmd = cmd->prox;
        }
        printf("\n");
        func = func->prox;
    }
}

void freeHash(void **hashTable) {
    if (!hashTable) return;
    for (int i = 0; i < TAM_HASH; i++) {
        if (!hashTable[i]) continue;
        HashNo *head = hashTable[i];
        while (head) {
            HashNo *aux = head->prox;
            if (head->param) {
                Param *p = head->param;
                while (p) {
                    Param *auxP = p->prox;
                    free(p);
                    p = auxP;
                }
            }
            if (head->varId) free(head->varId);
            head->varId = NULL;
            free(head);
            head = aux;
        }
        hashTable[i] = NULL;
    }
    free(hashTable);
    hashTable = NULL;
}