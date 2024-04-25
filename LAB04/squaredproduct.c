#include <stdio.h>
int squaredproduct(int n,...){
  int *ptr=&n;
  long long int out=1;
  
  
  if(n>1){
      unsigned int i=0;
      for(i=0;i<n;i++){
            out=out*ptr[i+1];
            }
            return out*out;
 
}
}
  
  
int main(){
printf("%d", squaredproduct(2,5,3));

return 0;
}