//Swap Funtion without using third variable. with and without use of pointer.

#include <stdio.h>

// without pointer
void swap1(int a,int b){
    printf("start:%d,%d\n",a,b);
    a+=b ; 
    b=a-b;
    a-=b;
    printf("swapped:%d,%d\n",a,b);
}

// with pointer
void swap2(int *a,int *b){
    printf("start:%d,%d\n",*a,*b);
     *a+=*b ; 
    *b=*a-*b;
    *a-=*b;
    printf("swapped:%d,%d\n",*a,*b);
        printf("\n");
}


int main()
{
    int a = 1,b =2;
  
    printf("After swapping-without pointer usage\n");
    swap1(a,b);
    
    printf("After swapping-with pointer usage \n");
    swap2(&a,&b);
  
    printf("\n");

    return 0;
}

