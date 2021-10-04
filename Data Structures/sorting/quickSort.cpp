//
// Created by abhi on 31/08/2021.
//

/*quick sort
 * // partioin(arr,l,r);
 *      piv=arr[last(r)]
 *      for( j=l-1 to r-1)
 *          if(piv>arr[j]) => swap (i+1,j )
 *      swap(i+1 , r )
 *      return i+1
 *
 *   QuickSort(arr, l,r)
 *     IF(l<r)
 *          pi=partion(arr,l,r)
 *          quickSort(arr,l,pi-1,)
 *          quickSort(arr,pi+1,r)
 */
#include <iostream>
using namespace std;
void swap(int arr[],int i, int j){
    int temp= arr[i];
    arr[i]=arr[j];
    arr[j]=temp;
}
int partition(int arr[],int l,int r){
   int piv = arr[r];
   int i=l-1;
   for(int j = l;j<r;j++){
       if(piv>arr[j]){
           i++;
           swap(arr,i,j);
       }
   }
   swap(arr,i+1,r);
   return i+1;
}
void quickSort(int arr[],int l,int r){
    if(l<r){
        int pi = partition(arr,l,r);
        quickSort(arr,l,pi-1);
        quickSort(arr,pi+1,r);
    }
}

int main(){
    int l=0,r;
    int ar[]={4,3,2,1,5};
    quickSort(ar,0,4);
    for(int i : ar){
        cout<<i<<",";
    }
    cin>>r;
    int arr[r];
    cout<<"\nenter the size of arr: ";
    for(int i=0;i<r;i++){
        cin>>arr[i];
    }

    r-=1;
    quickSort(arr,l,r);
    for(auto i:arr){
        cout<<i<<",";
    }
    return 0;
}

