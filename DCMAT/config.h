#ifndef CONFIG_C_CONFIG_H
#define CONFIG_C_CONFIG_H 1

#include <stdio.h>
#include <stdlib.h>

typedef struct configs {
    float hv_lo, hv_hi, vv_lo, vv_hi;
    int fp, isv, desEixos, cdop, excluirPlot;
} Configs;

Configs* criarConfig    ();
Configs* resetarConfig  (Configs* cfg);
void mostrarConfig      (Configs* cfg);

#endif