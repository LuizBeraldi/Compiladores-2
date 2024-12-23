#include <stdio.h>
#include "config.h"

Configs* criarConfig(){
    Configs* cfg = (Configs*) malloc(sizeof(Configs));
    cfg = resetarConfig(cfg);

    return cfg;
}

Configs* resetarConfig(Configs* cfg){
    cfg->hv_lo = -6.500000;
    cfg->hv_hi = 6.500000;
    cfg->vv_lo = -3.500000;
    cfg->vv_hi = 3.500000;
    cfg->fp = 6;
    cfg->isv = 1000;
    cfg->desEixos = 1;
    cfg->excluirPlot = 1;
    cfg->cdop = 0;

    return cfg;
}

Configs* configuracao(Configs* cfg, float hv_lo, float hv_hi, float vv_lo, float vv_hi, int isv, int desEixos, int cdop, int excluirPlot){
    cfg->hv_lo = hv_lo;
    cfg->hv_hi = hv_hi;
    cfg->vv_lo = vv_lo;
    cfg->vv_hi = vv_hi;
    cfg->isv = isv;
    cfg->desEixos = desEixos;
    cfg->cdop = cdop;
    cfg->excluirPlot = excluirPlot;

    return cfg;
}

void mostrarConfig(Configs* cfg){
    printf("\nh_view_lo: %.6f", cfg->hv_lo);
    printf("\nh_view_hi: %.6f", cfg->hv_hi);
    printf("\nv_view_lo: %.6f", cfg->vv_lo);
    printf("\nv_view_hi: %.6f", cfg->vv_hi);
    printf("\nfloat precision: %d", cfg->fp);
    printf("\nintegral_steps: %d", cfg->isv);

    if(cfg->desEixos == 1){
        printf("\n\nDraw Axis: ON");
    }else{
        printf("\n\nDraw Axis: OFF");
    }

    if(cfg->excluirPlot == 1){
        printf("\nErase Plot: ON");
    }else{
        printf("\nErase Plot: OFF");
    }

    if(cfg->cdop == 1){
        printf("\nConnect Dots: ON\n\n");
    }else{
        printf("\nConnect Dots: OFF\n\n");
    }

    printf("\n\n");
}