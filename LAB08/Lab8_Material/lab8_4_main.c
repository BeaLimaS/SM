#include <stdlib.h>
#include <stdio.h>

int par_ou_impar(int a0);

int main()
{
    int result;
    int a0;

    printf("Introduza um numero inteiro: ");
    scanf("%d", &a0);

    printf("O numero %d eh ", a0);

    result = par_ou_impar(a0);

    if(result == 1)
        printf("par\n");

    else
        printf("impar\n");

    return 0;
}
