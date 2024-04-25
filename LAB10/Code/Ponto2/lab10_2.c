
/* Compute the n^th Fibonacci Number using (1) standard for loops, (2) recursive calls. */
/* Fibonacci Series: Fn = 0, F1 = 1; Fn = Fn-1 + Fn-2, n>2    */
/*                      0, 1, 1, 2, 3, 5, 8, 13, 21, ...      */

#include <stdio.h>


/* Compute the Fibonacci Series up to n, using standard a for loop*/
int fibonacci_cycle(int n);


/* Compute the Fibonacci Series up to n, using recursive calls*/
int fibonacci_recursive(int n);


int main(int argc, char**argv) {

int n;

if (argc == 2) {
    n = atoi(argv[1]);
    printf("The %dth number in the Fibonacci sequence is %d (calculated with a loop)\n", n, fibonacci_cycle(n));
    printf("The %dth number in the Fibonacci sequence is %d (calculated with recursion)\n", n, fibonacci_recursive(n));
}
else {
    printf("Usage: %s n\n", argv[0]);
    printf("where n is the index of the number to calculate in the Fibonacci sequence.\n");
}

return 0;


}
