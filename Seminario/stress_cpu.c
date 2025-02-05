#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdbool.h>
#include <time.h>

#define TAM_MATRIZ 3000
#define LIM_PRIMO 90000000
#define TERMOS_TAYLOR 900000000

//Função para multiplicação de matrizes
void mult_matrizes(int **A, int **B, int **res, int tam) {
    for (int i = 0; i < tam; i++) {
        for (int j = 0; j < tam; j++) {
            res[i][j] = 0;
            for (int k = 0; k < tam; k++) {
                res[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

//Função para verificar se um número é primo
bool eh_primo(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= sqrt(n); i++) {
        if (n % i == 0) return false;
    }
    return true;
}

//Função para calcular a série de Taylor de e^x
double serie_taylor_exp(double x, int termos) {
    double res = 1.0;
    double num = 1.0;
    double denom = 1.0;

    for (int i = 1; i <= termos; i++) {
        num *= x;
        denom *= i;
        res += num / denom;
    }

    return res;
}

int main() {
    srand(time(NULL));

    //Alocando dinâmicamente as matrizes no heap
    int **A = malloc(TAM_MATRIZ * sizeof(int *));
    int **B = malloc(TAM_MATRIZ * sizeof(int *));
    int **res = malloc(TAM_MATRIZ * sizeof(int *));

    for (int i = 0; i < TAM_MATRIZ; i++) {
        A[i] = malloc(TAM_MATRIZ * sizeof(int));
        B[i] = malloc(TAM_MATRIZ * sizeof(int));
        res[i] = malloc(TAM_MATRIZ * sizeof(int));
    }

    //Multiplicação de matrizes
    printf("Inicializando matrizes...\n");
    for (int i = 0; i < TAM_MATRIZ; i++) {
        for (int j = 0; j < TAM_MATRIZ; j++) {
            A[i][j] = rand() % 100;
            B[i][j] = rand() % 100;
        }
    }

    printf("Multiplicando matrizes...\n");
    mult_matrizes(A, B, res, TAM_MATRIZ);
    printf("Multiplicação de matrizes concluída.\n");

    for (int i = 0; i < TAM_MATRIZ; i++) {
        free(A[i]);
        free(B[i]);
        free(res[i]);
    }
    free(A);
    free(B);
    free(res);

    //Cálculo de números primos
    int qtd_primos = 0;

    printf("Calculando números primos até %d...\n", LIM_PRIMO);
    for (int i = 2; i <= LIM_PRIMO; i++) {
        if (eh_primo(i)) {
            qtd_primos++;
        }
    }
    printf("Total de números primos até %d: %d\n", LIM_PRIMO, qtd_primos);

    //Cálculo da série de Taylor para e^x
    double x = 2.0;

    printf("Calculando a série de Taylor para e^%.2f com %d termos...\n", x, TERMOS_TAYLOR);
    double res_taylor = serie_taylor_exp(x, TERMOS_TAYLOR);
    printf("e^%.2f (aproximado com %d termos): %.15f\n", x, TERMOS_TAYLOR, res_taylor);

    printf("Todos os testes concluídos.\n");
    return 0;
}
