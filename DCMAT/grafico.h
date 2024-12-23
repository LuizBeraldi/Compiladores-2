#ifndef _GRAPHS_MANAGER_H_
#define _GRAPHS_MANAGER_H_

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <stdbool.h>

#define TAM_EIXO_X 80
#define TAM_EIXO_Y 25

void habilitarEixos     (float vv_lo, float vv_hi, float hv_lo, float hv_hi);
void desenharEixos      (bool desEixos);
void desabilitarEixos   (float vv_lo, float vv_hi, float hv_lo, float hv_hi);
void inserirPonto       (int coluna, float xValor, float yValor, float hv_lo, float hv_hi, float vv_lo, float vv_hi);

#endif