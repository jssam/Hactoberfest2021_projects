// Insertion sort
#include <stdio.h>
#include<math.h>

void insertionSort(int arr[],int size){
    int i,j,key;
    for(i=1;i<size;i++){
        j=i-1;
        key = arr[i];
        
        while(j>=0 && arr[j]>key){
            arr[j+1]=arr[j];
            j-=1;
        }
        arr[j+1]=key;
    }
    
    // print arr
    for(i=0;i<size;i++){
        printf("%d ",arr[i]);
    }
}


int main()
{
   int arr[]={5,4,7,8,2};
   int len = sizeof(arr)/sizeof(arr[0]);
   insertionSort(arr,len);

    return 0;
}
