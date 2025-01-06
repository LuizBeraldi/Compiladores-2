#include "asm.h"

int regS[8] = {0, 0, 0, 0, 0, 0, 0, 0}, regT[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

char *definirDeclaracoes = NULL, *atribuicaoGlobal = NULL;

int obRegS(){
    for(int i = 0; i < 8; i++){
        if(regS[i] == 0){
            regS[i] = 1;
            return i;
        }
    }
    exit(-1);
    return -1;
}

int obRegT(){
    for(int i = 0; i < 10; i++){
        if(regT[i] == 0){
            regT[i] = 1;
            return i;
        }
    }
    return -1;
}

void imprimirComeco(){
    printf(".text\n");
    printf(".globl main\n\n");
}

int constante(int valor){
    int t = obRegT();

    printf("\taddi $t%d, $zero, %d\n", t, valor);

    return t;
}

int opeAritmeticas(int tipoEsq, int regEsq, int tipoDir, int regDir, char *op){
    int t = obRegT();

    printf("\t%s $t%d, $%c%d, $%c%d\n", op, t, tipoEsq == 0 ? 't' : 's', regEsq, tipoDir == 0 ? 't' : 's', regDir);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    if(tipoDir == 0){
        regT[regDir] = 0;
    }

    return t;
}

int opDivisao(int tipoEsq, int regEsq, int tipoDir, int regDir, char *op){
    printf("\tdiv $%c%d, $%c%d\n", tipoEsq == 0 ? 't' : 's', regEsq, tipoDir == 0 ? 't' : 's', regDir);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    if(tipoDir == 0){
        regT[regDir] = 0;
    }
    int t = obRegT();

    printf("\t%s $t%d\n", op, t);

    return t;
}

int preIncremento(int tipoEsq, int regEsq, char *op){
    printf("\t%s $%c%d, $%c%d, 1\n", op, tipoEsq == 0 ? 't' : 's', regEsq, tipoEsq == 0 ? 't' : 's', regEsq);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    return regEsq;
}

int posIncremento(int tipoEsq, int regEsq, char *op){
    int t = obRegT();

    printf("\tadd $t%d, $zero, $%c%d\n", t, tipoEsq == 0 ? 't' : 's', regEsq);
    printf("\t%s $%c%d, $%c%d, 1\n", op, tipoEsq == 0 ? 't' : 's', regEsq, tipoEsq == 0 ? 't' : 's', regEsq);

    return t;
}

int atribuicao(int tipoDir, int regDir){
    int s = obRegS();

    printf("\tadd $s%d, $zero, $%c%d\n", s, tipoDir == 0 ? 't' : 's', regDir);

    if(tipoDir == 0){
        regT[regDir] = 0;
    }

    return s;
}

void atribuicaoParaReg(int tipoDir, int regDir, int regEsq){
    printf("\tadd $s%d, $zero, $%c%d\n", regEsq, tipoDir == 0 ? 't' : 's', regDir);

    if(tipoDir == 0){
        regT[regDir] = 0;
    }
}

int declararString(char *nome, char *valor){
    printf("\t.data\n");
    printf("\t\t%s: .asciiz \"%s\"\n", nome, valor);
    printf("\t.text\n");

    int s = obRegS();

    printf("\tla $s%d, %s\n", s, nome);

    return s;
}

int atribuicaoEndereco(int tipoEsq, int regEsq, char *nome){
    if(regEsq == -1){
        regEsq = obRegS();
    }
    printf("\t.data\n");
    printf("\t\t%s: .word 0\n", nome);
    printf("\t.text\n");
    printf("\tla $s%d, %s\n", regEsq, nome);

    return regEsq;
}

void armazenadoNoEndereco(int tipoEsq, int regEsq, int tipoDir, int regDir){
    printf("\tsw $%c%d, 0($%c%d)\n", tipoDir == 0 ? 't' : 's', regDir, tipoEsq == 0 ? 't' : 's', regEsq);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    if(tipoDir == 0){
        regT[regDir] = 0;
    }
}

int maisMenos(int tipoEsq, int regEsq, char *op){
    int t = obRegT();

    printf("\t%s $t%d, $zero, $%c%d\n", op, t, tipoEsq == 0 ? 't' : 's', regEsq);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    return t;
}

int bitNao(int tipoEsq, int regEsq){
    int t = obRegT();

    printf("\tnot $t%d, $%c%d\n", t, tipoEsq == 0 ? 't' : 's', regEsq);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    return t;
}

int bitOp(int tipoEsq, int regEsq, int tipoDir, int regDir, char *op){
    int t = obRegT();

    printf("\t%s $t%d, $%c%d, $%c%d\n", op, t, tipoEsq == 0 ? 't' : 's', regEsq, tipoDir == 0 ? 't' : 's', regDir);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    if(tipoDir == 0){
        regT[regDir] = 0;
    }

    return t;
}

int naoLogico(int tipoEsq, int regEsq){
    int t = obRegT();

    printf("\taddi $t%d, $zero, 1\n", t);
    printf("\tslt $t%d, $%c%d, $zero\n", t, tipoEsq == 0 ? 't' : 's', regEsq);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    return t;
}

int opRelacional(int tipoEsq, int regEsq, int tipoDir, int regDir, char *op){
    int t = obRegT();

    printf("\t%s $t%d, $%c%d, $%c%d\n", op, t, tipoEsq == 0 ? 't' : 's', regEsq, tipoDir == 0 ? 't' : 's', regDir);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    if(tipoDir == 0){
        regT[regDir] = 0;
    }

    return t;
}

int eLogico(int tipoEsq, int regEsq, int tipoDir, int regDir, int labelID){
    int t = obRegT();

    printf("\taddi $t%d, $zero, 0\n", t);
    printf("\tbeq $t%d, $%c%d, %s%d\n", t, tipoEsq == 0 ? 't' : 's', regEsq, "e_", labelID);
    printf("\tbeq $t%d, $%c%d, %s%d\n", t, tipoDir == 0 ? 't' : 's', regDir, "e_", labelID);
    printf("\taddi $t%d, $zero, 1\n", t);
    printf("\t%s%d:\n", "e_", labelID);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    if(tipoDir == 0){
        regT[regDir] = 0;
    }

    return t;
}

int ouLogico(int tipoEsq, int regEsq, int tipoDir, int regDir, int labelID){
    int t = obRegT();

    printf("\taddi $t%d, $zero, 1\n", t);
    printf("\tbeq $t%d, $%c%d, %s%d\n", t, tipoEsq == 0 ? 't' : 's', regEsq, "ou_", labelID);
    printf("\tbeq $t%d, $%c%d, %s%d\n", t, tipoDir == 0 ? 't' : 's', regDir, "ou_", labelID);
    printf("\taddi $t%d, $zero, 0\n", t);
    printf("\t%s%d:\n", "ou_", labelID);

    if(tipoEsq == 0){
        regT[regEsq] = 0;
    }

    if(tipoDir == 0){
        regT[regDir] = 0;
    }

    return t;
}

void se(int tipoCond, int regCond, int labelID){
    printf("\tbeqz $%c%d, senao_%d\n", tipoCond == 0 ? 't' : 's', regCond, labelID);

    if(tipoCond == 0){
        regT[regCond] = 0;
    }
}

void enquanto(int tipoCond, int regCond, int labelID){
    int t = obRegT();

    printf("\tbnez $%c%d, enquantoc_%d\n", tipoCond == 0 ? 't' : 's', regCond, labelID);

    if(tipoCond == 0){
        regT[regCond] = 0;
    }
    regT[t] = 0;
}

void para(int tipoCond, int regCond, int labelID){
    int t = obRegT();

    printf("\tbnez $%c%d, parac_%d\n", tipoCond == 0 ? 't' : 's', regCond, labelID);

    if(tipoCond == 0){
        regT[regCond] = 0;
    }
    regT[t] = 0;
}

void ternario(int tipoCond, int regCond, int labelID){
    int t = obRegT();

    printf("\taddi $t%d, $zero, 0\n\tbeq $t%d, $%c%d, ternariof_%d\n", t, t, tipoCond == 0 ? 't' : 's', regCond, labelID);

    if (tipoCond == 0){
        regT[regCond] = 0;
    }
    regT[t] = 0;
}

void jump(char *label, int labelID){
    printf("\tj %s%d\n", label, labelID);
}

void label(char *label, int labelId){
    printf("\t%s%d:\n", label, labelId);
}

void funcao(char *nome){
    printf("\n%s:\n", nome);
}

void variavelGlobalMemoria(int tam, char *nome){
    printf("\t%s: .%s 0\n", nome, tam == 32 ? "word" : "byte");
}

void setDefinicaoVariavelInt(char *nome, int valor){
    if(!definirDeclaracoes){
        definirDeclaracoes = calloc(4096, sizeof(char));
    }
        
    sprintf(definirDeclaracoes + strlen(definirDeclaracoes), "\t%s: .word %d\n", nome, valor);
}

void definicao(){
    if(definirDeclaracoes){
        printf("%s", definirDeclaracoes);
        free(definirDeclaracoes);
    }
}

void setGlobalAtribuicaoVar(char *nome, int valor){
    if(!atribuicaoGlobal){
        atribuicaoGlobal = calloc(4096, sizeof(char));
    }

    int t1 = obRegT(), t2 = obRegT();
    sprintf(atribuicaoGlobal + strlen(atribuicaoGlobal), "\tla $t%d, %s\n", t1, nome);
    sprintf(atribuicaoGlobal + strlen(atribuicaoGlobal), "\tadd $t%d, $zero, %d\n", t2, valor);
    sprintf(atribuicaoGlobal + strlen(atribuicaoGlobal), "\tsw $t%d, 0($t%d)\n", t2, t1);
    regT[t1] = 0;
    regT[t2] = 0;
}

void globalAtribuicaoVar(){
    if(atribuicaoGlobal){
        printf("%s", atribuicaoGlobal);
        free(atribuicaoGlobal);
    }
}

int loadGlobalInt(char *nome){
    int t1 = obRegT(), t2 = obRegT();

    printf("\tla $t%d, %s\n\tlw $t%d, 0($t%d)\n", t1, nome, t2, t1);

    regT[t1] = 0;

    return t2;
}

void armazenarGlobalInt(int tipo, int reg, char *nome){
    int t1 = obRegT();

    printf("\tla $t%d, %s\n\tsw $%c%d, 0($t%d)\n", t1, nome, tipo == 0 ? 't' : 's', reg, t1);

    if(tipo == 0){
        regT[reg] = 0;
    }
    regT[t1] = 0;
}

int declaraArray(char *nome, int tam, int ehGlobal){
    if(ehGlobal){
        printf("\t%s: .space %d\n", nome, tam * 4);
        return -1;
    }

    int s = obRegS();

    printf("\t.data\n\t\t%s: .space %d\n\t.text\n", nome, tam * 4);

    return s;
}

int acessarEnderecoArray(int tipoArray, int arrayReg, char *nome, int indexTipo, int indexReg, int ehGlobal){
    if(ehGlobal){
        int t1 = obRegT(), t2 = obRegT();

        printf("\tla $t%d, %s\n\tsll $t%d, $%c%d, 2\n", t1, nome, t2, indexTipo == 0 ? 't' : 's', indexReg);
        printf("\tadd $t%d, $t%d, $t%d\n", t2, t2, t1);

        if(indexTipo == 0){
            regT[indexReg] = 0;
        }
        regT[t1] = 0;

        return t2;
    }else{
        int t = obRegT();

        printf("\tla $%c%d, %s\n\tsll $t%d, $%c%d, 2\n", tipoArray == 0 ? 't' : 's', arrayReg, nome, t, indexTipo == 0 ? 't' : 's', indexReg);
        printf("\tadd $t%d, $t%d, $%c%d\n", t, t, tipoArray == 0 ? 't' : 's', arrayReg);

        if(indexTipo == 0){
            regT[indexReg] = 0;
        }

        if(tipoArray == 0){
            regT[arrayReg] = 0;
        }

        return t;
    }
}

void armazenarNoArray(int posic, int tipoDir, int regDir){
    printf("\tsw $%c%d, 0($t%d)\n", tipoDir == 0 ? 't' : 's', regDir, posic);

    if(tipoDir == 0){
        regT[regDir] = 0;
    }
    regT[posic] = 0;
}

int loadDoArray(int posic){
    int t = obRegT();

    printf("\tlw $t%d, 0($t%d)\n", t, posic);
    regT[posic] = 0;

    return t;
}

int loadByte(int tipo, int reg){
    int t = obRegT();

    printf("\tlb $t%d, 0($%c%d)\n", t, tipo == 0 ? 't' : 's', reg);

    if(tipo == 0){
        regT[reg] = 0;
    }

    return t;
}

void inteiro(int tipoReg, int numReg){
    printf("\tadd $a0, $zero, $%c%d\n\taddi $v0, $zero, 1\n\tsyscall\n", tipoReg == 0 ? 't' : 's', numReg);

    if(tipoReg == 0){
        regT[numReg] = 0;
    }
}

void caracter(int tipoReg, int numReg){
    printf("\tadd $a0, $zero, $%c%d\n\taddi $v0, $zero, 11\n\tsyscall\n", tipoReg == 0 ? 't' : 's', numReg);

    if(tipoReg == 0){
        regT[numReg] = 0;
    }
}

void stringVar(int tipo, int valor){
    printf("\tmove $a0, $%c%d\n\taddi $v0, $zero, 4\n\tsyscall\n", tipo == 0 ? 't' : 's', valor);

    if(tipo == 0){
        regT[valor] = 0;
    }
}

void string(char *valor, int stringID){
    printf("\t.data\n\t\tstring_%d: .asciiz \"%s\"\n\t.text\n\tla $a0, string_%d\n\taddi $v0, $zero, 4\n\tsyscall\n", stringID, valor, stringID);
}

int scanInt(int sReg, char *nome, int ehGlobal){
    if(sReg == -1){
        sReg = obRegS();
    }
    printf("\taddi $v0, $zero, 5\n\tsyscall\n");

    if(ehGlobal){
        int t = obRegT();

        printf("\tla $t%d, %s\n\tsw $v0, 0($t%d)\n", t, nome, t);
        regT[t] = 0;

        return -1;
    }
    printf("\tadd $s%d, $zero, $v0\n", sReg);

    return sReg;
}

void chamarFuncao(char *nome){
    printf("\tjal %s\n", nome);
}

void setParametroNoReg(int aReg, int tipoDir, int regDir, char *var){
    printf("\tadd $a%d, $zero, $%c%d\n", aReg, tipoDir == 0 ? 't' : 's', regDir);

    if(tipoDir == 0){
        regT[regDir] = 0;
    }
}

void parametroFuncao(char *nome, int params){
    if(!strcmp(nome, "main")){
        return;
    }

    if(params == 0){
        return;
    }

    for(int i = 0; i < params; i++){
        printf("\tadd $s%d, $zero, $a%d\n", i, i);
        regS[i] = 1;
    }
}

void imprimirReturn(){
    printf("\tjr $ra\n");
}

void imprimirReturnV0(int tipo, int reg){
    printf("\tadd $v0, $zero, $%c%d\n", tipo == 0 ? 't' : 's', reg);

    if(tipo == 0){
        regT[reg] = 0;
    }
}

int imprimirLoadReturnV0(){
    int t = obRegT();

    printf("\tadd $t%d, $zero, $v0\n", t);

    return t;
}

void armazenarGlobalPilha(int *globals){
    for(int i = 0; i < 8; i++){
        if(regS[i] == 1){
            globals[i] = 1;
        }
    }
}

void armazenarNaPilha(){
    printf("\taddi $sp, $sp, -52\n");
    printf("\tsw $a0, 0($sp)\n");
    printf("\tsw $a1, 4($sp)\n");
    printf("\tsw $a2, 8($sp)\n");
    printf("\tsw $a3, 12($sp)\n");
    printf("\tsw $s0, 16($sp)\n");
    printf("\tsw $s1, 20($sp)\n");
    printf("\tsw $s2, 24($sp)\n");
    printf("\tsw $s3, 28($sp)\n");
    printf("\tsw $s4, 32($sp)\n");
    printf("\tsw $s5, 36($sp)\n");
    printf("\tsw $s6, 40($sp)\n");
    printf("\tsw $s7, 44($sp)\n");
    printf("\tsw $ra, 48($sp)\n\n");
}

void loadDaPilha(){
    printf("\n\tlw $a0, 0($sp)\n");
    printf("\tlw $a1, 4($sp)\n");
    printf("\tlw $a2, 8($sp)\n");
    printf("\tlw $a3, 12($sp)\n");
    printf("\tlw $s0, 16($sp)\n");
    printf("\tlw $s1, 20($sp)\n");
    printf("\tlw $s2, 24($sp)\n");
    printf("\tlw $s3, 28($sp)\n");
    printf("\tlw $s4, 32($sp)\n");
    printf("\tlw $s5, 36($sp)\n");
    printf("\tlw $s6, 40($sp)\n");
    printf("\tlw $s7, 44($sp)\n");
    printf("\tlw $ra, 48($sp)\n");
    printf("\taddi $sp, $sp, 52\n\n");
}

void armazenarRegT(int *regs){
    int cont = 0;

    for(int i = 0; i < 10; i++){
        regs[i] = regT[i];
        regT[i] = 0;

        if(regT[i] == 1){
            cont++;
        }
    }

    if(cont == 0){
        return;
    }
    printf("\taddi $sp, $sp, -%d\n", cont * 4);

    for(int i = 0; i < 10; i++){
        if(regs[i] == 1){
            printf("\tsw $t%d, %d($sp)\n", i, i * 4);
        }
    }
}

void loadRegT(int *regs){
    int cont = 0;

    for(int i = 0; i < 10; i++){
        regT[i] = regs[i];

        if(regs[i] == 1){
            cont++;
        }
    }

    if(cont == 0){
        return;
    }

    for(int i = 0; i < 10; i++){
        if(regs[i] == 1){
            printf("\tlw $t%d, %d($sp)\n", i, i * 4);
        }
    }
    printf("\taddi $sp, $sp, %d\n", cont * 4);
}

void freeReg(int tipo, int num){
    if(tipo == 0){
        regT[num] = 0;
    }else{
        regS[num] = 0;
    }
}

void imprimirExit(){
    printf("\n\taddi $v0, $zero, 10\n\tsyscall\n");
}