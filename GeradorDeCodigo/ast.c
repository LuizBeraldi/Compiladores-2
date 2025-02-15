#include "ast.h"
#include <stdint.h>
#include "asm.h"
#include "hash.h"
#include "sintatico.tab.h"

int *regTsv = NULL, noAtri = 0;

Programa *criarPrograma(void **hash, void *listaFuncoes, void *main){
    Programa *np = calloc(1, sizeof(Programa));
    np->hashTable = hash;
    np->listaFuncoes = listaFuncoes;
    np->main = main;

    return np;
}

Funcao *criarFuncao(void **hash, int retornaTipo, int ptr, char *nome, void *listaComando, void *prox){
    Funcao *nf = calloc(1, sizeof(Funcao));
    nf->hashTable = hash;
    nf->retornaTipo = retornaTipo;
    nf->ptr = ptr;
    nf->nome = nome;
    nf->listaComando = listaComando;
    nf->prox = prox;

    return nf;
}

ExpParam *criarExpressaoParametro(Expressao *exp, ExpParam *prox){
    ExpParam *nep = calloc(1, sizeof(ExpParam));
    nep->exp = exp;
    nep->prox = prox;

    return nep;
}

Expressao *criarExpressao(int tipo, int operador, void * esq, void *dir){
    Expressao *ne = calloc(1, sizeof(Expressao));
    ne->tipo = tipo;
    ne->operador= operador;
    ne->esq = esq;
    ne->dir = dir;
    ne->dimensao = NULL;
    ne->condicaoTernaria = NULL;

    return ne;
}

Dimensao *criarDimensao(int tam){
    Dimensao *nd = calloc(1, sizeof(Dimensao));
    nd->tam = tam;

    return nd;
}

int contDimensao(void *d){
    Dimensao *dimensao = d;

    if(!dimensao){
        return 0;
    }
    int cont = 1;
    Dimensao *aux = dimensao;

    while(aux->prox){
        cont++;
        aux = aux->prox;
    }

    return cont;
}

Dimensao *criarDimensaoExpressao(Expressao *exp){
    Dimensao *nd = calloc(1, sizeof(Dimensao));
    nd->exp = exp;

    return nd;
}

void setDimensaoExpressao(Expressao *expressao, Dimensao *dimensao){
    if(!expressao){
        return;
    }

    if(expressao->dimensao){
        Dimensao *aux = expressao->dimensao;
        while (aux->prox){
            aux = aux->prox;
        }
        aux->prox = dimensao;
    }else{
        expressao->dimensao = dimensao;
    }
}

Comando *criarSe(Expressao *condicao, void *entao, void *elseS, void *prox){
    Comando *nse = calloc(1, sizeof(Comando));
    nse->tipo = IF;
    nse->condicao = condicao;
    nse->entao = entao;
    nse->elseS = elseS;
    nse->prox = prox;

    return nse;
}

Comando *criarFaçaEnquanto(Expressao *condicao, void *entao, void *prox){
    Comando *nfe = calloc(1, sizeof(Comando));
    nfe->tipo = DO_WHILE;
    nfe->condicao = condicao;
    nfe->entao = entao;
    nfe->prox = prox;

    return nfe;
}

Comando *criarEnquanto(Expressao *condicao, void *entao, void *prox){
    Comando *nen = calloc(1, sizeof(Comando));
    nen->tipo = WHILE;
    nen->condicao = condicao;
    nen->entao = entao;
    nen->prox = prox;

    return nen;
}

Comando *criarPara(Expressao *ini, Expressao *condicao, Expressao *incrementa, void *entao, void *prox){
    Comando *npa = calloc(1, sizeof(Comando));
    npa->tipo = FOR;
    npa->ini = ini;
    npa->condicao = condicao;
    npa->incrimenta = incrementa;
    npa->entao = entao;
    npa->prox = prox;

    return npa;
}

Comando *criarImprimir(char *string, Expressao *imprimirAux, void *prox){
    Comando *nim = calloc(1, sizeof(Comando));
    nim->tipo = PRINTF;
    nim->string = string;
    nim->imprimirAux = imprimirAux;
    nim->prox = prox;

    return nim;
}

Comando *criarScan(char *string, char *identificador, void *prox){
    Comando *nsc = calloc(1, sizeof(Comando));
    nsc->tipo = SCANF;
    nsc->string = string;
    nsc->identificador = identificador;
    nsc->prox = prox;

    return nsc;
}

Comando *criarReturn(Expressao *expressao, void *prox){
    Comando *nre = calloc(1, sizeof(Comando));
    nre->tipo = RETURN;
    nre->condicao = expressao;
    nre->prox = prox;

    return nre;
}

Comando *criarExit(Expressao *expressao, void *prox){
    Comando *nex = calloc(1, sizeof(Comando));
    nex->tipo = EXIT;
    nex->condicao = expressao;
    nex->prox = prox;

    return nex;
}

Comando *criarComandoExpressao(Expressao *expressao, void *prox){
    Comando *nco = calloc(1, sizeof(Comando));
    nco->tipo = LISTA_EXP_COMANDO;
    nco->condicao = expressao;
    nco->prox = prox;

    return nco;
}

ResultadoExpr *criarResultadoExpressao(int tipo, int ptr, int valor){
    ResultadoExpr *nre = calloc(1, sizeof(ResultadoExpr));
    nre->tipoVar = tipo;
    nre->ptr = ptr;
    nre->atribuicao = valor;
    nre->tipoReg = -1;
    nre->numReg = -1;

    return nre;
}

ResultadoExpr *avaliarExpressao(Expressao *expressao, void **globalHash, void **localHash, Programa *programa){
    if(!expressao){
        return NULL;
    }

    ResultadoExpr *esq = NULL, *dir = NULL, *resultado = NULL;
    HashNo *hashNo = NULL, *hashNoTemp = NULL, *NoAuxid = NULL;
    int tipoEsq, tipoDir, regEsq, regDir, regT, regS;

    if(expressao->tipo == PR){
        if(expressao->operador == INT || expressao->operador == CHAR){
            resultado = criarResultadoExpressao(expressao->tipo, expressao->ptr, expressao->atribuicao);
            int regT = constante(resultado->atribuicao);
            resultado->tipoReg = 0;
            resultado->numReg = regT;
            
            return resultado;
        }else if(expressao->operador == STRING){
            resultado = criarResultadoExpressao(STRING, 0, 0);
            strcpy(resultado->str, expressao->string);

            return resultado;
        }else if(expressao->operador == ID){
            hashNo = idNo(localHash, expressao->identificador);

            if(!hashNo){
                hashNo = idNo(globalHash, expressao->identificador);
            }

            if(!hashNo){
                printf("Variavel nao declarada: %s\n", expressao->identificador);
            }

            if(hashNo->tipoVar == VOID){
                resultado = criarResultadoExpressao(VOID, hashNo->ptr, hashNo->atribuicao);

                if(hashNo->tipok == VETOR){
                    resultado->ptr = 1;
                }
                resultado->NoAuxid = hashNo;

                if(hashNo->ehConstante || hashNo->ehGlobal){
                    if(!noAtri && hashNo->tipok != VETOR){
                        resultado->numReg = loadGlobalInt(hashNo->varId);
                        resultado->tipoReg = 0;
                    }
                }else{
                    if(hashNo->ptr > 0){
                        resultado->tipoReg = 1;
                        resultado->numReg = hashNo->regS;
                    }
                }

                return resultado;
            }else if(hashNo->tipoVar == INT || (hashNo->tipoVar == CHAR && hashNo->ptr == 0)){
                resultado = criarResultadoExpressao(hashNo->tipoVar, hashNo->ptr, hashNo->atribuicao);

                if(hashNo->tipok == VETOR){
                    resultado->ptr = 1;
                }
                resultado->NoAuxid = hashNo;

                if(hashNo->ehConstante || hashNo->ehGlobal){
                    if(!noAtri && hashNo->tipok != VETOR){
                        resultado->numReg = loadGlobalInt(hashNo->varId);
                        resultado->tipoReg = 0;
                    }
                }else{
                    resultado->tipoReg = 1;
                    resultado->numReg = hashNo->regS;
                }

                return resultado;
            }else if(hashNo->tipoVar == CHAR && hashNo->ptr == 1){
                resultado = criarResultadoExpressao(CHAR, 1, 0);
                strcpy(resultado->str, expressao->string);
                resultado->NoAuxid = hashNo;
                resultado->tipoReg = 1;
                resultado->numReg = hashNo->regS;

                return resultado;
            }
        }else{
            printf("Expressao primaria desconhecida\n");
        }
    }else if(expressao->tipo == BOP){
        if(expressao->esq->operador == ASSIGN){
            noAtri = 1;
        }
        esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);

        if(expressao->esq->operador == ASSIGN){
            noAtri = 0;
        }
        dir = avaliarExpressao(expressao->dir, globalHash, localHash, programa);

        tipoEsq = esq->tipoReg;
        regEsq = esq->numReg;
        tipoDir = dir->tipoReg;
        regDir = dir->numReg;

        if(expressao->operador == ASSIGN){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, dir->atribuicao);

            if((esq->tipoVar == INT || esq->tipoVar == VOID) && esq->ptr == 1 && dir->ptr == 1){
                int s = atribuicaoEndereco(esq->tipoReg, esq->numReg, ((HashNo *)esq->NoAuxid)->varId);
                setRegSHash(((HashNo *)esq->NoAuxid), s);
                resultado->tipoReg = 1;
                resultado->numReg = s;

                return resultado;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }

            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                armazenarNoArray(esq->numReg, tipoDir, regDir);
                resultado->tipoReg = 0;
                regS = esq->numReg;
            }else if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal){
                freeReg(esq->tipoReg, esq->numReg);
                armazenarGlobalInt(tipoDir, regDir, ((HashNo *)esq->NoAuxid)->varId);
                resultado->tipoReg = 0;
            }else{
                if(((HashNo *)esq->NoAuxid)->regS == -1){
                    if(esq->tipoVar == CHAR && esq->ptr == 1){
                        dir->str[strlen(dir->str) - 1] = '\0';
                        char aux[strlen(dir->str) - 1];
                        strcpy(aux, dir->str + 1);

                        for(int i = 0; i < strlen(dir->str); i++){
                            dir->str[i] = '\0';
                        }
                        strcpy(dir->str, aux);
                        regS = declararString(((HashNo *)esq->NoAuxid)->varId, dir->str);
                        resultado->tipoReg = 1;
                        resultado->numReg = regS;
                        ((HashNo *)esq->NoAuxid)->regS = regS;
                        strcpy(((HashNo *)esq->NoAuxid)->string, dir->str);
                    }else{
                        if(expressao->esq->tipo == UOP){
                            armazenadoNoEndereco(esq->tipoReg, esq->numReg, tipoDir, regDir);
                        }else{
                            regS = atribuicao(tipoDir, regDir);
                            ((HashNo *)esq->NoAuxid)->regS = regS;
                        }
                    }
                }else{
                    if(esq->tipoVar == CHAR && esq->ptr == 1){
                        resultado->tipoReg = 1;
                        resultado->numReg = ((HashNo *)esq->NoAuxid)->regS;
                        strcpy(((HashNo *)esq->NoAuxid)->string, dir->str);
                    }else{
                        if(expressao->esq->tipo == UOP){
                            armazenadoNoEndereco(esq->tipoReg, esq->numReg, tipoDir, regDir);

                        }else{
                            regS = esq->numReg;
                            atribuicaoParaReg(tipoDir, regDir, regS);
                        }
                    }
                }
                resultado->tipoReg = 1;
            }
            resultado->numReg = regS;
            hashNoTemp = idNo(localHash, expressao->identificador);

            if(!hashNoTemp){
                hashNoTemp = idNo(globalHash, expressao->identificador);
            }

            if(hashNoTemp){
                setAtrib(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == ADD_ASSIGN){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao + dir->atribuicao);
            regT = opeAritmeticas(esq->tipoReg, esq->numReg, dir->tipoReg, dir->numReg, "add");

            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal){
                freeReg(esq->tipoReg, esq->numReg);
                armazenarGlobalInt(0, regT, ((HashNo *)esq->NoAuxid)->varId);
                resultado->tipoReg = 0;
                resultado->numReg = esq->numReg;
            }else{
                atribuicaoParaReg(0, regT, esq->numReg);
                resultado->numReg = esq->numReg;
                resultado->tipoReg = esq->tipoReg;
            }
            hashNoTemp = idNo(localHash, expressao->identificador);

            if(!hashNoTemp){
                hashNoTemp = idNo(globalHash, expressao->identificador);
            }

            if(hashNoTemp){
                setAtrib(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == MINUS_ASSIGN){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao - dir->atribuicao);
            regT = opeAritmeticas(esq->tipoReg, esq->numReg, dir->tipoReg, dir->numReg, "sub");

            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->ehGlobal){
                freeReg(esq->tipoReg, esq->numReg);
                armazenarGlobalInt(0, regT, ((HashNo *)esq->NoAuxid)->varId);
                resultado->tipoReg = 0;
                resultado->numReg = esq->numReg;
            }else{
                atribuicaoParaReg(0, regT, esq->numReg);
                resultado->numReg = esq->numReg;
                resultado->tipoReg = esq->tipoReg;
            }
            hashNoTemp = idNo(localHash, expressao->esq->identificador);

            if(!hashNoTemp){
                hashNoTemp = idNo(globalHash, expressao->esq->identificador);
            }

            if(hashNoTemp){
                setAtrib(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == PLUS){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao + dir->atribuicao);
            regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "add");

            if(esq->tipoVar == CHAR && esq->ptr == 1){
                strcpy(resultado->str, ((HashNo *)esq->NoAuxid)->string + dir->atribuicao);
            }

            if(dir->tipoVar == CHAR && dir->ptr == 1){
                strcpy(resultado->str, ((HashNo *)dir->NoAuxid)->string + esq->atribuicao);
            }
            resultado->tipoReg = 0;
            resultado->numReg = regT;

            return resultado;
        }else if(expressao->operador == MINUS){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao - dir->atribuicao);
            int regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "sub");
            resultado->tipoReg = 0;
            resultado->numReg = regT;

            return resultado;
        }else if(expressao->operador == MULTIPLY){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao * dir->atribuicao);
            regT = opeAritmeticas(tipoEsq, regEsq, tipoDir, regDir, "mul");
            resultado->numReg = regT;
            resultado->tipoReg = 0;
            return resultado;
        }else if(expressao->operador == DIVIDE){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao / dir->atribuicao);
            regT = opDivisao(tipoEsq, regEsq, tipoDir, regDir, "mflo");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == REMAINDER){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao % dir->atribuicao);
            regT = opDivisao(tipoEsq, regEsq, tipoDir, regDir, "mfhi");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == BITWISE_OR){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao | dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "or");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == BITWISE_AND){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao & dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "and");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == BITWISE_XOR){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao ^ dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "xor");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LOGICAL_AND){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao && dir->atribuicao);
            regT = eLogico(tipoEsq, regEsq, tipoDir, regDir, abs((int)((intptr_t)expressao)));
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LOGICAL_OR){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao || dir->atribuicao);
            regT = ouLogico(tipoEsq, regEsq, tipoDir, regDir, abs((int)((intptr_t)expressao)));
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LESS_THAN){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao < dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "slt");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == LESS_EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao <= dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sle");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == GREATER_THAN){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao > dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sgt");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == GREATER_EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao >= dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sge");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao == dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "seq");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == NOT_EQUAL){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(INT, 0, esq->atribuicao != dir->atribuicao);
            regT = opRelacional(tipoEsq, regEsq, tipoDir, regDir, "sne");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == R_SHIFT){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao >> dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "srlv");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == L_SHIFT){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
                regDir = loadDoArray(dir->numReg);
                tipoDir = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao << dir->atribuicao);
            regT = bitOp(tipoEsq, regEsq, tipoDir, regDir, "sllv");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }
    }else if(expressao->tipo == UOP){
        esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);
        tipoEsq = esq->tipoReg;
        regEsq = esq->numReg;

        if(expressao->operador == INC){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(expressao->preOuPos == 1){
                resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, ++(esq->atribuicao));
                regT = preIncremento(esq->tipoReg, esq->numReg, "addi");
                resultado->tipoReg = esq->tipoReg;
                resultado->numReg = regT;

            }else if(expressao->preOuPos == 2){
                int originalValue = esq->atribuicao;
                esq->atribuicao++;
                resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, originalValue);
                regT = posIncremento(esq->tipoReg, esq->numReg, "addi");
                resultado->tipoReg = 0;
                resultado->numReg = regT;
            }
            hashNoTemp = idNo(localHash, expressao->identificador);

            if(!hashNoTemp){
                hashNoTemp = idNo(globalHash, expressao->identificador);
            }

            if(hashNoTemp){
                setAtrib(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == DEC){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }

            if(expressao->preOuPos == 1){
                resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, --(esq->atribuicao));
                regT = preIncremento(esq->tipoReg, esq->numReg, "subi");
                resultado->tipoReg = esq->tipoReg;
                resultado->numReg = regT;
            }else if(expressao->preOuPos == 2){
                int originalValue = esq->atribuicao;
                esq->atribuicao--;
                resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, originalValue);
                regT = posIncremento(esq->tipoReg, esq->numReg, "subi");
                resultado->tipoReg = 0;
                resultado->numReg = regT;
            }
            hashNoTemp = idNo(localHash, expressao->identificador);

            if(!hashNoTemp){
                hashNoTemp = idNo(globalHash, expressao->identificador);
            }

            if(hashNoTemp){
                setAtrib(hashNoTemp, resultado->atribuicao);
            }
            hashNoTemp = NULL;

            return resultado;
        }else if(expressao->operador == BITWISE_NOT){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, ~esq->atribuicao);
            regT = bitNao(tipoEsq, regEsq);
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == PLUS){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, +esq->atribuicao);
            regT = maisMenos(tipoEsq, regEsq, "add");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == MINUS){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, -esq->atribuicao);
            regT = maisMenos(tipoEsq, regEsq, "sub");
            resultado->numReg = regT;
            resultado->tipoReg = 0;

            return resultado;
        }else if(expressao->operador == NOT){
            if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
                regEsq = loadDoArray(esq->numReg);
                tipoEsq = 0;
            }
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, !(esq->atribuicao));
            regT = naoLogico(esq->tipoReg, esq->numReg);
            resultado->tipoReg = 0;
            resultado->numReg = regT;
        }else if(expressao->operador == MULTIPLY){
            if(esq->tipoVar == CHAR && esq->ptr == 1){
                resultado = criarResultadoExpressao(CHAR, 0, *(((HashNo *)esq->NoAuxid)->string));
                int t = loadByte(esq->tipoReg, esq->numReg);
                resultado->tipoReg = 0;
                resultado->numReg = t;
            }else if(esq->tipoVar == INT && esq->ptr == 1){
                resultado = criarResultadoExpressao(INT, 0, 0);
                int i = constante(0);

                if(esq->numReg == -1){
                    esq->numReg = atribuicaoEndereco(esq->tipoReg, esq->numReg, ((HashNo *)esq->NoAuxid)->varId);
                    setRegSHash(((HashNo *)esq->NoAuxid), esq->numReg);
                }
                int posic = acessarEnderecoArray(esq->tipoReg, esq->numReg, ((HashNo *)esq->NoAuxid)->varId, 0, i, ((HashNo *)esq->NoAuxid)->ehGlobal);
                resultado->tipoReg = 0;

                if(noAtri){
                    resultado->numReg = posic;
                }else{
                    resultado->numReg = loadDoArray(posic);
                }
            }else{
                resultado = criarResultadoExpressao(esq->tipoVar, 0, *(&esq->atribuicao));
            }
            resultado->NoAuxid = esq->NoAuxid;

            return resultado;
        }else{
            printf("Operador unario desconhecido\n");
            exit(1);
        }
    }else if(expressao->tipo == TERNARIA){
        esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);
        dir = avaliarExpressao(expressao->dir, globalHash, localHash, programa);

        ResultadoExpr *condicao = avaliarExpressao(expressao->condicaoTernaria, globalHash, localHash, programa);
        ternario(condicao->tipoReg, condicao->numReg, abs((int)((intptr_t)condicao)));
        label("ternariot_", abs((int)((intptr_t)condicao)));
        esq = avaliarExpressao(expressao->esq, globalHash, localHash, programa);
        jump("ternariofim_", abs((int)((intptr_t)condicao)));
        label("ternariof_", abs((int)((intptr_t)condicao)));
        dir = avaliarExpressao(expressao->dir, globalHash, localHash, programa);
        label("ternariofim_", abs((int)((intptr_t)condicao)));

        tipoEsq = esq->tipoReg;
        regEsq = esq->numReg;
        tipoDir = dir->tipoReg;
        regDir = dir->numReg;

        if(esq->NoAuxid && ((HashNo *)esq->NoAuxid)->tipok == VETOR){
            regEsq = loadDoArray(esq->numReg);
            tipoEsq = 0;
        }

        if(dir->NoAuxid && ((HashNo *)dir->NoAuxid)->tipok == VETOR){
            regDir = loadDoArray(dir->numReg);
            tipoDir = 0;
        }

        if(condicao->atribuicao){
            resultado = criarResultadoExpressao(esq->tipoVar, esq->ptr, esq->atribuicao);
            resultado->numReg = esq->numReg;
            resultado->tipoReg = esq->tipoReg;
            if(tipoDir == 0){
                freeReg(tipoDir, regDir);
            }
        }else{
            resultado = criarResultadoExpressao(dir->tipoVar, dir->ptr, dir->atribuicao);
            resultado->numReg = dir->numReg;
            resultado->tipoReg = dir->tipoReg;
            if(tipoEsq == 0){
                freeReg(tipoEsq, regEsq);
            }
        }

        return resultado;
    }else if(expressao->tipo == AC){
        NoAuxid = idNo(localHash, expressao->identificador);

        if(!NoAuxid){
            NoAuxid = idNo(globalHash, expressao->identificador);
        }

        int posic = -1, qntdDimenRecebidas = 0;
        Dimensao *dimenRecebidas = expressao->dimensao, *dimenEsperada = NoAuxid->dimensao;
        ResultadoExpr *dimenResult = NULL;

        int mipsIndex = constante(1);

        while(dimenRecebidas){
            qntdDimenRecebidas++;
            dimenResult = avaliarExpressao(dimenRecebidas->exp, globalHash, localHash, programa);
            mipsIndex = opeAritmeticas(0, mipsIndex, dimenResult->tipoReg, dimenResult->numReg, "mul");
            dimenEsperada = dimenEsperada->prox;
            dimenRecebidas = dimenRecebidas->prox;
        }
        posic = acessarEnderecoArray(1, NoAuxid->regS, NoAuxid->varId, 0, mipsIndex, NoAuxid->ehGlobal);
        resultado = criarResultadoExpressao(NoAuxid->tipoVar, 0, 0);
        resultado->tipoReg = 0;
        resultado->numReg = posic;
        resultado->NoAuxid = NoAuxid;

        return resultado;
    }else if(expressao->tipo == FC){
        NoAuxid = idNo(globalHash, expressao->identificador);
        ExpParam *auxParamRecebido = expressao->param;
        int qntdParamRecebido = 0;

        while(auxParamRecebido){
            qntdParamRecebido++;
            auxParamRecebido = auxParamRecebido->prox;
        }
        Param *auxParam = NoAuxid->param;
        auxParamRecebido = expressao->param;
        ResultadoExpr *resultParam = NULL;
        int i = 1, j = qntdParamRecebido - 1;

        while(auxParamRecebido && auxParam){
            resultParam = avaliarExpressao(auxParamRecebido->exp, globalHash, localHash, programa);

            if(resultParam->NoAuxid && ((HashNo *)resultParam->NoAuxid)->tipok == VETOR){
                resultParam->numReg = loadDoArray(resultParam->numReg);
            }
            setParametroNoReg(j, resultParam->tipoReg, resultParam->numReg, auxParam->identificador);
            j = j - 1;
            auxParam = auxParam->prox;
            auxParamRecebido = auxParamRecebido->prox;
            i++;
        }
        resultado = criarResultadoExpressao(NoAuxid->tipoVar, NoAuxid->ptr, 0);
        chamarFuncao(NoAuxid->varId);
        int r = imprimirLoadReturnV0();
        resultado->tipoReg = 0;
        resultado->numReg = r;
        resultado->NoAuxid = NoAuxid;

        return resultado;
    }else{
        printf("Tipo de expressao desconhecida\n");
    }
    return 0;
}

void traverseASTCommand(Comando *comando, void **globalHash, void **localHash, Programa *programa, Funcao *funcaoAtual) {
    if(!comando || comando->visitado){
        return;
    }
    comando->visitado = 1;
    Comando *t = NULL;

    if(comando->tipo == IF){
        ResultadoExpr *seResultado = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
        int seLinha = abs((int)((intptr_t)comando->entao)), elseLinha = -1;

        if(comando->elseS){
            elseLinha = abs((int)((intptr_t)comando->elseS));
        }else{
            elseLinha = seLinha;
        }
        se(seResultado->tipoReg, seResultado->numReg, elseLinha);
        t = comando->entao;

        while(t){
            traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
            t = t->prox;
        }
        jump("exit_if_", seLinha);
        label("senao_", elseLinha);
        Comando *t2 = comando->elseS;

        while(t2){
            traverseASTCommand(t2, globalHash, localHash, programa, funcaoAtual);
            t2 = t2->prox;
        }
        label("exit_if_", seLinha);
    }else if(comando->tipo == DO_WHILE || comando->tipo == WHILE){
        int whileLine = abs((int)((intptr_t)comando));
        if(comando->tipo == WHILE){
            jump("enquantot_", whileLine);
        }
        label("enquantoc_", whileLine);
        t = comando->entao;

        while(t){
            traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
            t = t->prox;
        }
        label("enquantot_", whileLine);
        ResultadoExpr *whileResult = NULL;
        whileResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
        enquanto(whileResult->tipoReg, whileResult->numReg, whileLine);
    }else if(comando->tipo == FOR){
        int forLine = abs((int)((intptr_t)comando));
        avaliarExpressao(comando->ini, globalHash, localHash, programa);
        jump("parat_", forLine);
        label("parac_", forLine);
        t = comando->entao;

        while(t){
            traverseASTCommand(t, globalHash, localHash, programa, funcaoAtual);
            t = t->prox;
        }
        avaliarExpressao(comando->incrimenta, globalHash, localHash, programa);
        label("parat_", forLine);
        ResultadoExpr *forResult = NULL;
        forResult = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
        para(forResult->tipoReg, forResult->numReg, forLine);
    }else if(comando->tipo == PRINTF){
        if(comando->imprimirAux){
            Expressao *prox = comando->imprimirAux;
            ResultadoExpr *paraImprimir = NULL;
            char *restoString = NULL;
            char *stringSemFormato = calloc(strlen(comando->string) + 1, sizeof(char));
            strcpy(stringSemFormato, comando->string + 1);

            while(prox){
                paraImprimir = avaliarExpressao(prox, globalHash, localHash, programa);
                prox = prox->proxExpr;

                if(paraImprimir){
                    if(paraImprimir->NoAuxid){
                        if(((HashNo *)paraImprimir->NoAuxid)->tipok == VETOR){
                            paraImprimir->numReg = loadDoArray(paraImprimir->numReg);
                            paraImprimir->tipoReg = 0;
                        }
                    }
                }
                int imprimindo = 0;
                char *formatoS = strstr(stringSemFormato, "%d");

                if(formatoS){
                    imprimindo = INT;
                }else{
                    formatoS = strstr(stringSemFormato, "%s");
                    if(formatoS){
                        imprimindo = STRING;
                    }else{
                        formatoS = strstr(stringSemFormato, "%c");

                        if(formatoS){
                            imprimindo = CHAR;
                        }
                    }
                }

                if(restoString){
                    free(restoString);
                }
                restoString = calloc(strlen(formatoS) + 1, sizeof(char));
                strcpy(restoString, formatoS + 2);
                restoString[strlen(restoString)] = '\0';

                if(formatoS != NULL){
                    *formatoS = '\0';
                }
                string(stringSemFormato, abs((int)((intptr_t)paraImprimir)));

                if (imprimindo == INT){
                    inteiro(paraImprimir->tipoReg, paraImprimir->numReg);
                }else if (imprimindo == CHAR){
                    caracter(paraImprimir->tipoReg, paraImprimir->numReg);
                }else if (imprimindo == STRING){
                    stringVar(paraImprimir->tipoReg, paraImprimir->numReg);
                }
                free(stringSemFormato);
                stringSemFormato = calloc(strlen(restoString) + 1, sizeof(char));
                strcpy(stringSemFormato, restoString);
            }

            if(strlen(restoString) > 0){
                restoString[strlen(restoString) - 1] = '\0';
                string(restoString, rand() % 67282);
            }

            if(restoString){
                free(restoString);
            }

            if(stringSemFormato){
                free(stringSemFormato);
            }
        }else{
            char *stringF = calloc(strlen(comando->string) - 1, sizeof(char));
            strncpy(stringF, comando->string + 1, strlen(comando->string) - 2);
            stringF[strlen(comando->string) - 2] = '\0';
            string(stringF, abs((int)((intptr_t)comando->string)));
            free(stringF);
        }
    }else if(comando->tipo == SCANF){
        HashNo *no = idNo(localHash, comando->identificador);

        if(!no){
            no = idNo(globalHash, comando->identificador);
        }

        if(!no){
            printf("Variavel nao foi declarada no scanf: %s\n", comando->identificador);
        }

        int sReg = scanInt(no->regS, no->varId, no->ehGlobal);
        no->regS = sReg;
    }else if(comando->tipo == RETURN){
        if(funcaoAtual->retornaTipo == VOID && funcaoAtual->ptr == 0){
            if(comando->condicao){
                printf("Funcao nao pode retornar valor: %s\n", funcaoAtual->nome);
            }

            if(strcmp(funcaoAtual->nome, "main")){
                loadDaPilha();
                loadRegT(regTsv);
                imprimirReturn();
            }
        }else{
            if(!comando->condicao){
                printf("Funcao deve retornar valor: %s\n", funcaoAtual->nome);
            }
            ResultadoExpr *returnAux = avaliarExpressao(comando->condicao, globalHash, localHash, programa);

            if(returnAux->NoAuxid){
                if(((HashNo *)returnAux->NoAuxid)->regS == -1){
                    int null = constante(0);
                    int s = atribuicao(0, null);
                    setRegSHash((HashNo *)returnAux->NoAuxid, s);
                    returnAux->tipoReg = 1;
                    returnAux->numReg = s;
                }
            }
            imprimirReturnV0(returnAux->tipoReg, returnAux->numReg);

            if(strcmp(funcaoAtual->nome, "main")){
                loadDaPilha();
                loadRegT(regTsv);
                imprimirReturn();
            }
        }
    }else if(comando->tipo == EXIT){
        if(comando->condicao){
            ResultadoExpr *status = avaliarExpressao(comando->condicao, globalHash, localHash, programa);
            imprimirExit();
        }
    }else if(comando->tipo == LISTA_EXP_COMANDO){
        avaliarExpressao(comando->condicao, globalHash, localHash, programa);
        traverseASTCommand(comando->prox, globalHash, localHash, programa, funcaoAtual);
    }else{
        printf("Comando desconhecido\n");
    }
}

void lookForNodeInHashWithExpr(void **globalHash, void **localHash, Programa *programa){
    if(!localHash){
        return;
    }

    for(int i = 0; i < TAM_HASH; i++){
        HashNo *no = (HashNo *)localHash[i];
        ResultadoExpr *atrib = NULL;

        while(no){
            if(no->tipok == FUNCTION || no->ehConstante){
                no = no->prox;
                continue;
            }

            if(localHash == globalHash){
                no->ehGlobal = 1;
                int tam = 0;
                if(no->tipok == VAR){
                    if(no->tipoVar == NUM_INT || no->tipoVar == INT || no->tipoVar == VOID || no->ptr > 0){
                        tam = 32;
                    }else{
                        tam = 8;
                    }
                    variavelGlobalMemoria(tam, no->varId);
                }
            }

            if(no->tipok == VETOR){
                Dimensao *d = no->dimensao;
                int tam = 0;

                while(d){
                    tam = tam + d->tam;
                    d = d->prox;
                }
                int s = declaraArray(no->varId, tam, no->ehGlobal);
                setRegSHash(no, s);
            }

            if(no->hashExpr){
                atrib = avaliarExpressao(no->hashExpr, globalHash, localHash, programa);
                int atribuicaoType, atribuicaoptr = atrib->ptr;

                if(atrib->tipoVar == CHAR){
                    atribuicaoType = CHAR;
                }else if(atrib->tipoVar == INT){
                    atribuicaoType = INT;
                }else if(atrib->tipoVar == STRING){
                    atribuicaoType = CHAR;
                    atribuicaoptr = 1;
                }else{
                    atribuicaoType = VOID;
                }

                if(globalHash == localHash){
                    setGlobalAtribuicaoVar(no->varId, atrib->atribuicao);
                }else{
                    if(atribuicaoType == CHAR && atribuicaoptr == 1){
                        atrib->str[strlen(atrib->str) - 1] = '\0';
                        strcpy(atrib->str, atrib->str + 1);
                        int regS = declararString(no->varId, atrib->str);
                        setRegSHash(no, regS);
                        strcpy(no->string, atrib->str);
                    }else{
                        int regS = atribuicao(atrib->tipoReg, atrib->numReg);
                        setRegSHash(no, regS);
                        setAtrib(no, atrib->atribuicao);
                    }
                }
            }
            no = no->prox;
        }
    }
}

int traverseAST(Programa *programa){
    if(!programa){
        return -1;
    }

    imprimirComeco();
    printf("\n.data\n");
    definicao();
    lookForNodeInHashWithExpr(programa->hashTable, programa->hashTable, programa);
    printf(".text\n\n");
    Funcao *funcaoAtual = programa->listaFuncoes;

    while(funcaoAtual != NULL){
        for(int i = 0; i < 10; i++){
            freeReg(0, i);
        }

        for(int i = 0; i < 8; i++){
            freeReg(1, i);
        }
        HashNo *funcNode = idNo(programa->hashTable, funcaoAtual->nome);
        funcao(funcaoAtual->nome);

        if(strcmp(funcaoAtual->nome, "main")){
            regTsv = calloc(10, sizeof(int));
            armazenarRegT(regTsv);
            armazenarNaPilha();
        }else{
            globalAtribuicaoVar();
        }
        parametroFuncao(funcaoAtual->nome, funcNode->qntParam);
        lookForNodeInHashWithExpr(programa->hashTable, funcaoAtual->hashTable, programa);
        Comando *comando = funcaoAtual->listaComando;

        while(comando != NULL){
            traverseASTCommand(comando, programa->hashTable, funcaoAtual->hashTable, programa, funcaoAtual);
            comando = comando->prox;
        }

        if(strcmp(funcaoAtual->nome, "main")){
            loadDaPilha();
            loadRegT(regTsv);
            free(regTsv);
            imprimirReturn();
        }
        funcaoAtual = funcaoAtual->prox;
    }

    return 0;
}

void freeAST(Programa *programa){
    if(!programa){
        return;
    }
    freeHash(programa->hashTable);
    Funcao *func = programa->listaFuncoes;

    while(func){
        Funcao *func2 = func->prox;
        Comando *cmd = func->listaComando;

        while(cmd){
            Comando *cmd2 = cmd->prox;

            if(cmd->condicao){
                free(cmd->condicao);
            }

            if(cmd->ini){
                free(cmd->ini);
            }

            if(cmd->incrimenta){
                free(cmd->incrimenta);
            }

            if(cmd->imprimirAux){
                free(cmd->imprimirAux);
            }
            free(cmd);
            cmd = cmd2;
        }
        freeHash(func->hashTable);

        if(func->nome){
            free(func->nome);
        }
        free(func);
        func = func2;
    }
    free(programa);
}