#include <stdio.h>

int main(){
    int arr[10],n,temp,smallest,pos;
    printf("Enter the size of array: ");
    scanf("%d",&n);
    printf("Enter array elements: ");
    for(int i=0;i<n;i++){
        scanf("%d",&arr[i]);
    }
    printf("Your original array:\n");
    for(int i=0;i<n;i++){
        printf("| %d |",arr[i]);
    }
    for (int i=0; i<n; i++){
        smallest = arr[i];
        for(int j = i+1;j<n;j++){
            if(smallest>arr[j]){
                smallest=arr[j];
                pos=j;
            }
            temp=arr[i];
            arr[i]=arr[pos];
            arr[pos]=temp; 
        }
    }
    printf("\nYour sorted array:\n");
    for(int i=0;i<n;i++){
        printf("| %d |",arr[i]);
    }
}
