/*
 * memoria.c
 */

	/*MEM:
	/* Descreva (editando os comentários) o efeito em termos de memória de cada
	    uma das declarações e instruções assinaladas com o comentário /*MEM:
	   Quais as zonas de memória implicadas: armazenamento estático, pilha ou heap?
	   Alguma  memória é reservada ou libertada? Se sim, onde esta essa memória?
	   A instrução em questão pode levar a uma fuga de memória?
	  
	 */

#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>

#define DELTA 33

int calls, seed=356;   /*MEM: a memoria e reservada, na static, nao */

int soma_ds(int a){     /*MEM: a memoria e reservada, na stack, nao*/
 int d=DELTA;           /*MEM: a memoria e reservada, na stack, nao**/
 calls++; 				/*MEM:altera o valor **/
 return a+d+seed; 
}   					/*MEM:a memoria e libertada*/

int main() {
	int num;								/*MEM:a memoria e reservada, na stack, nao*/
	int *ptr;
	int **handle;
	 
	 num = 14;								/*MEM:a memoria e reservada, na stack, nao*/
	 ptr = (int *)malloc(2 * sizeof(int));	/*MEM:a memoria e reservada, na heap, pode haver fuga de memoria*/
	 handle = &ptr;							/*MEM:a memoria e reservada, na stack, nao*/
	 **handle = num;						/*MEM:a memoria e reservada, na stack, nao*/
	 *(*handle+1) = num+1;					/*MEM:a memoria e reservada, na stack, nao*/
	 *ptr = num-2;							/*MEM:a memoria e reservada, na stack, nao*/
	 ptr = &num;							/*MEM:a memoria e reservada, na stack, nao*/
	 *ptr = soma_ds(num-2);					/*MEM:a memoria e reservada, na stack, nao*/

}
