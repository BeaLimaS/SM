
/* Compute the n^th Fibonacci Number using (1) standard for loops, (2) recursive calls. */
/* Fibonacci Series: Fn = 0, F1 = 1; Fn = Fn-1 + Fn-2, n>2    */
/*                      0, 1, 1, 2, 3, 5, 8, 13, 21, ...      */
#include <stdio.h>


/* Compute the Fibonacci Series up to n, using standard a for loop*/
int fibonacci_cycle(int n){
int anterior=0;
int out=0;
int aux;
unsigned int i=0;
for(i=0;i<n;i++){
    if(i==1){ 
    anterior=1;
      }else {
      aux=out;
      out=out+anterior;
      anterior=aux;
    }
  }
  return out;
}


/* Compute the Fibonacci Series up to n, using recursive calls*/
int fibonacci_recursive(int n, int *count) {
  *count=*count+1;
  printf("%d, %p", *count, &n);
  if(n==1){
      return 1;
  }else if(n==2){
  return 1;
  }else{
      return fibonacci_recursive(n-1,count)+fibonacci_recursive(n-2,count);
  }




}


int main(int argc, char**argv) {
int i=0;
int count=0;
for(i=0;i<argc;i++){
    printf("%d \n %d",fibonacci_recursive(atoi(argv[i]), &count));
    }



}
