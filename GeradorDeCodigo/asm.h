#ifndef _ASM_H
#define _ASM_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void imprimirComeco();

int constante(int valor);
int opeAritmeticas(int tipoEsq, int regEsq, int tipoDir, int regDir, char *op);
int opDivisao(int tipoEsq, int regEsq, int tipoDir, int regDir, char *op);
int preIncremento(int tipoEsq, int regEsq, char *op);
int posIncremento(int tipoEsq, int regEsq, char *op);
int atribuicao(int tipoDir, int regDir);
void atribuicaoParaReg(int tipoDir, int regDir, int regEsq);
int declararString(char *nome, char *valor);
int atribuicaoEndereco(int tipoEsq, int regEsq, char *nome);
void armazenadoNoEndereco(int tipoEsq, int regEsq, int tipoDir, int regDir);
int maisMenos(int tipoEsq, int regEsq, char *op);
int bitNao(int tipoEsq, int regEsq);
int bitOp(int tipoEsq, int regEsq, int tipoDir, int regDir, char *op);
int naoLogico(int tipoEsq, int regEsq);
int opRelacional(int tipoEsq, int regEsq, int tipoDir, int regDir, char *op);
int eLogico(int tipoEsq, int regEsq, int tipoDir, int regDir, int labelID);
int ouLogico(int tipoEsq, int regEsq, int tipoDir, int regDir, int labelID);
void se(int tipoCond, int regCond, int labelID);
void enquanto(int tipoCond, int regCond, int labelID);
void para(int tipoCond, int regCond, int labelID);
void ternario(int tipoCond, int regCond, int labelID);
void jump(char *label, int labelID);
void label(char *label, int labelID);
void funcao(char *nome);
void variavelGlobalMemoria(int tam, char *nome);
void setDefinicaoVariavelInt(char *nome, int valor);
void definicao();
void setGlobalAtribuicaoVar(char *nome, int valor);
void globalAtribuicaoVar();
int loadGlobalInt(char *nome);
void armazenarGlobalInt(int tipo, int reg, char *nome);
int declaraArray(char *nome, int tam, int ehGlobal);
int acessarEnderecoArray(int tipoArray, int arrayReg, char *nome, int indexTipo, int indexReg, int ehGlobal);
void armazenarNoArray(int posic, int tipoDir, int regDir);
int loadDoArray(int posic);
int loadByte(int tipo, int reg);
void inteiro(int tipoReg, int numReg);
void caracter(int tipoReg, int numReg);
void stringVar(int tipo, int valor);
void string(char *valor, int stringID);
int scanInt(int sReg, char *nome, int ehGlobal);
void chamarFuncao(char *nome);
void setParametroNoReg(int aReg, int tipoDir, int regDir, char *var);
void parametroFuncao(char *nome, int params);
void imprimirReturn();
void imprimirReturnV0(int tipo, int reg);
int imprimirLoadReturnV0();
void armazenarGlobalPilha(int *globais);
void armazenarNaPilha();
void loadDaPilha();
void armazenarRegT(int *regs);
void loadRegT(int *regs);
void freeReg(int tipo, int num);
void imprimirExit();

#endif