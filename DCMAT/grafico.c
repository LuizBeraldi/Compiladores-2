#include "grafico.h"

char eixos[TAM_EIXO_Y][TAM_EIXO_X + 1] = {0};

void habilitarEixos(float vv_lo, float vv_hi, float hv_lo, float hv_hi){
    for(int i = 0; i < TAM_EIXO_Y; i++){
        for(int j = 0; j < TAM_EIXO_X + 1; j++){
            eixos[i][j] = ' ';
        }
    }
    int indiceX = -1, indiceY = 0;

    float xp = (hv_hi - hv_lo) / (float)(TAM_EIXO_X), yp = (vv_hi - vv_lo) / (float)(TAM_EIXO_Y), acumulado = hv_lo;

    while(acumulado < 0.0){
        acumulado += xp;
        indiceY++;
    }
    acumulado = vv_hi;

    while(acumulado > 0.0){
        acumulado -= yp;
        indiceX++;
    }

    if(indiceX >= TAM_EIXO_Y){
        indiceX = TAM_EIXO_Y - 1;
    }

    if(indiceX < 0){
        indiceX = 0;   
    }

    if(indiceY > TAM_EIXO_X){
        indiceY = TAM_EIXO_X;
    }

    if(indiceY < 0){
        indiceY = 0;
    }
    int aux = 0;

    if(vv_lo <= 0.0 && vv_hi >= 0.0){
        for(int i = 0; i < TAM_EIXO_X + 1; i++){
            if(eixos[indiceX][i] == ' '){
                eixos[indiceX][i] = '-';
            }
        }
        aux = 1;
    }

    if(hv_lo <= 0.0 && hv_hi >= 0.0){
        for(int i = 0; i < TAM_EIXO_Y; i++){
            if(eixos[i][indiceY] == ' '){
                eixos[i][indiceY] = '|';
            }
        }
        aux = 2;
    }

    if(aux == 2){
        if(eixos[indiceX][indiceY] != '*'){
            eixos[indiceX][indiceY] = '+';
        }
    }else{
        if(eixos[indiceX][indiceY] != '*'){
            eixos[indiceX][indiceY] = ' ';
        }
    }
}

void desenharEixos(bool desEixos){
    printf("\n");

    for(int i = 0; i < TAM_EIXO_Y; i++){
        for(int j = 0; j < TAM_EIXO_X + 1; j++){
            if(!desEixos && (eixos[i][j] == '-' || eixos[i][j] == '|' || eixos[i][j] == '+')){
                printf(" ");
            }else{
                printf("%c", eixos[i][j]);
            }
        }
        printf("\n");
    }
    printf("\n");
}

void desabilitarEixos(float vv_lo, float vv_hi, float hv_lo, float hv_hi){
    for(int i = 0; i < TAM_EIXO_Y; i++){
        for(int j = 0; j < TAM_EIXO_X + 1; j++){
            eixos[i][j] = ' ';
        }
    }
    habilitarEixos(vv_lo, vv_hi, hv_lo, hv_hi);
}

void inserirPonto(int coluna, float xValor, float yValor, float hv_lo, float hv_hi, float vv_lo, float vv_hi){
    if(xValor < hv_lo || xValor > hv_hi || yValor < vv_lo || yValor > vv_hi){
        return;
    }
    float yp = (vv_hi - vv_lo) / (float)(TAM_EIXO_Y);
    int linha = (TAM_EIXO_Y - 1) - (int)((yValor - vv_lo) / yp);

    if(linha < 0){
        linha = 0;
    }

    if(linha >= TAM_EIXO_Y){
        linha = TAM_EIXO_Y - 1;
    }

    if(coluna < 0){
        coluna = 0;
    }

    if(coluna >= TAM_EIXO_X + 1){
        coluna = TAM_EIXO_X;
    }
    eixos[linha][coluna] = '*';
}