#include <stdio.h>
#include <stdlib.h>

int power(int a0, int a1){
    for(int i=0; i<a0;i++){
        a1*=a1;
    }
    return (a1);
}

