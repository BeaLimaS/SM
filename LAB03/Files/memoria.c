/*
 * memoria.c
 */

	/*MEM:
	/* Descreva (editando os coment�rios) o efeito em termos de mem�ria de cada
	    uma das declara��es e instru��es assinaladas com o coment�rio /*MEM:
	   Quais as zonas de mem�ria implicadas: armazenamento est�tico, pilha ou heap?
	   Alguma  mem�ria � reservada ou libertada? Se sim, onde esta essa mem�ria?
	   A instru��o em quest�o pode levar a uma fuga de mem�ria?
	  
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
