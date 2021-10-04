//
// Created by abhi on 02/09/2021.
//
/*
 * dutch national flag sort
 * used to sort if there is only three element are present
 */
/*it has two function basically ek hi samjho
 * we will sort with the help of three pointers and three IF statements
 * dnfsort(arr,n)
 *  low =0 denotes smallest number in all three
 *  mid =1
 *  hig =n-1
 *  while(mid=<hig)
 *   1st IF
 *      if(arr[mid==0) swap(mid,low), mid++ low++
 *   2nd IF
 *      else if(arr[mid==1) , mid++
 *   3rd IF
 *      else -->> swap(mid,hig) hig--
 *
 *
 */

#include<iostream>
using namespace  std;
void swap(int arr[],int l,int r){
    int temp = arr[l];
    arr[l]= arr[r];
    arr[r]=temp;
}
void dnfsort(int arr[], int n){
    int low=0,mid=0,hig=n-1;
    while(mid<=hig)
    if(arr[mid]==0){
        swap(arr,mid,low);
        mid++;
        low++;
    }
    else if(arr[mid]==1)mid++;
    else{
        swap(arr,mid,hig);
        hig--;
    }
}

int main(){
    int arr[]={1,0,2,1,1,2,1,2};
    dnfsort(arr,8);
    for(int i:arr){
        cout<<i<<",";
    }
    return 0;
}