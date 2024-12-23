#include "hash.h"

const int VAR_X = 304;
const int NUM_INT = 306;
const int NUM_FLOAT = 307;
const int MATRIX = 286;

void **criarHash(){
    void **ht = calloc(TAM_HASH, sizeof(NoHash));
    if(!ht){
        printf("Erro ao alocar memoria para hash\n");
        exit(1);
    }
    inserirHash(ht, "x", 0, VAR_X);
    inserirHash(ht, "matrix", 0, MATRIX);
    return ht;
}

int hash(char *valor){
    int hash = 0;
    for(int i = 0; i < strlen(valor); i++){
        hash += valor[i] * (i + 1);
    }

    return hash % TAM_HASH;
}

NoHash *valorEmHash(void **ht, char *valor){
    if(!ht){
        return 0;
    }
    int index = hash(valor);
    NoHash *inicio = (NoHash *)ht[index];

    while(inicio){
        if(!strcmp(valor, inicio->varId)){
            return inicio;
        }
        inicio = inicio->prox;
    }
    return NULL;
}

void *inserirHash(void **ht, char *varId, float valorId, int tipoAtual){
    if(!ht){
        return NULL; 
    }
    NoHash *aux = valorEmHash(ht, varId);

    if(aux){
        aux->tipoVar = tipoAtual;
        aux->valorId = valorId;
        strcpy(aux->varId, varId);

        return aux;
    }
    int index = hash(varId);
    aux = calloc(1, sizeof(NoHash));
    aux->tipoVar = tipoAtual;
    aux->varId = calloc(strlen(varId) + 1, sizeof(char));
    strcpy(aux->varId, varId);
    aux->valorId = valorId;
    NoHash *inicio = (NoHash *)ht[index];

    if(inicio){
        while(inicio->prox){
            inicio = inicio->prox;
        }
        inicio->prox = aux;
    }else{
        ht[index] = aux;
    }

    return aux;
}

float **criarMatriz(){
    float **m = calloc(MAX_MAT, sizeof(float *));

    for(int i = 0; i < MAX_MAT; i++){
        m[i] = calloc(MAX_MAT, sizeof(float));
    }

    for(int i = 0; i < MAX_MAT; i++){
        for(int j = 0; j < MAX_MAT; j++){
            m[i][j] = TEMP;
        }
    }
    return m;
}

void fixMatriz(float **m, int linha, int coluna){
    float aux[linha][coluna];
    int auxColuna = coluna - 1;

    for(int i = 0; i < linha; i++){
        for(int j = 0; j < coluna; j++){
            aux[i][auxColuna] = m[i][j];
            auxColuna--;
        }
        auxColuna = coluna - 1;
    }
    int indiceValido = 0;

    for(int i = 0; i < linha; i++){
        for(int j = 0; j < coluna; j++){
            m[i][j] = aux[i][j];

            if(m[i][j] != TEMP){
                m[i][indiceValido++] = m[i][j];
            }
        }

        while(indiceValido < coluna){
            m[i][indiceValido++] = 0.0;
        }
        indiceValido = 0;
    }
}

void mostrarMatriz(float **m, int linha, int coluna, int floatPrecisao){
    if(!m){
        printf("\nNo Matrix defined!\n\n");
        return;
    }
    int maximoDeDigitos[coluna];

    for(int i = 0; i < coluna; i++){
        maximoDeDigitos[i] = 0;
    }

    for(int i = 0; i < linha; i++){
        for(int j = 0; j < coluna; j++){
            int numDigitos = snprintf(NULL, 0, "%.0f", m[i][j]);

            if(numDigitos > maximoDeDigitos[j]){
                maximoDeDigitos[j] = numDigitos;
            }
        }
    }
    int totalAltura = 0;

    for(int i = 0; i < coluna; i++){
        totalAltura += maximoDeDigitos[i] + (floatPrecisao > 0 ? floatPrecisao + 2 : 1);
    }
    printf("\n+-");

    for(int j = 0; j < totalAltura - 1; j++){
        printf(" ");
    }
    printf("-+\n");


    for(int i = 0; i < linha; i++){
        printf("| ");
        for(int j = 0; j < coluna; j++){
            int antesDecimal = maximoDeDigitos[j] - snprintf(NULL, 0, "%d", (int)m[i][j]);

            for(int k = 0; k < antesDecimal; k++){
                printf(" ");
            }
            printf("%.*f ", floatPrecisao, m[i][j]);
        }
        printf("|\n");
    }
    printf("+-");

    for(int j = 0; j < totalAltura - 1; j++){
        printf(" ");
    }
    printf("-+\n\n");
}

void freeMatriz(float **m){
    if(!m){
        return;
    }

    for(int i = 0; i < MAX_MAT; i++){
        for(int j = 0; j < MAX_MAT; j++){
            m[i][j] = 0.0;
        }

        if(m[i]){
            free(m[i]);
        }
    }
    free(m);
}

NoHash *getIdentificadorNo(void **ht, char *id){
    if(!ht){
        return NULL;
    }
    int index = hash(id);
    NoHash *inicio = (NoHash *)ht[index];

    while(inicio){
        if(!strcmp(id, inicio->varId)){
            return inicio;
        }
        inicio = inicio->prox;
    }
    return NULL;
}

void mostrarSimbolos(void **ht){
    if(!ht){
        return;
    }

    for(int i = 0; i < TAM_HASH; i++){
        if(!ht[i]){
            continue;
        }
        NoHash *inicio = ht[i];

        while(inicio){
            if(!strcmp(inicio->varId, "x") || !strcmp(inicio->varId, "matrix")){
                inicio = inicio->prox;
                continue;
            }
            char type[30];

            if(inicio->tipoVar == MATRIX){
                sprintf(type, "MATRIX[%d][%d]", inicio->linhaMatriz, inicio->colunaMatriz);
            }else if(inicio->tipoVar == NUM_FLOAT || inicio->tipoVar == NUM_INT){
                strcpy(type, "FLOAT");
            }

            printf("\n%s - %s", inicio->varId, type);
            inicio = inicio->prox;
        }
    }
    printf("\n\n");
}

void removerNo(void **ht, char *id){
    if(!ht){
        return;
    }
    int index = hash(id);
    NoHash *inicio = (NoHash *)ht[index];
    NoHash *ante = NULL;

    while(inicio){
        if(!strcmp(id, inicio->varId)){
            if(ante){
                ante->prox = inicio->prox;
            }else{
                ht[index] = inicio->prox;
            }

            if(inicio->valorId){
                free(inicio->varId);
            }
            free(inicio);
            return;
        }
        ante = inicio;
        inicio = inicio->prox;
    }
}

void freeHash(void **ht){
    if(!ht){
        return;
    }

    for(int i = 0; i < TAM_HASH; i++){
        if(!ht[i]){
            continue;
        }
        NoHash *inicio = ht[i];

        while(inicio){
            NoHash *aux = inicio->prox;

            if(inicio->varId){
                free(inicio->varId);
            }
            inicio->varId = NULL;

            if(inicio){
                free(inicio);
            }
            inicio = aux;
        }
        ht[i] = NULL;
    }
    if(ht){
        free(ht);
    }
    ht = NULL;
}