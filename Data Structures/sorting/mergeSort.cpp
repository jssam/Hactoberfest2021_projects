//
// Created by abhi on 31/08/2021.
//


/*
 * merge sort has divided into two void functions
 * 1. merge (imp one tough)
 * 2.mergesortSort
 * mergesort(arr, l ,r)
 *          if(l<r)->> get mid
 *              get mid
 *              mergesort(l to mid)
 *              mergesort (mid to r)
 *              merge(l mid r)
 *
 * merge(arr l mid r)
 *      n1 = mid-l+1 (mstk)
 *      n2 = r-mid
 *      arr1  = for(0 to n2 )cin>>arr1[i] = arr[l+i]
 *      arr2 same as arr1 but start with mid+1+i
 *      i=0,j=0,k=l {main work start from here}
 *
 *      while(n1>i && j< n2)
 *      main fanda - jo chota he use daal do or k++ and i/j ++ kardo
 *          if(arr[i]>arr[j]) then arr[k]=arr[j] ; k++ ; j++
 *
 *          else -->>arr[k]=arr[i]; k++ i++
 *      while(n1>i)
 *          arr[k]=arr[i] ; k++; i++
 *      while(n2>j)
 *          arr[k] = arr[j]; k++; i++;
 */

#include<iostream>
using namespace std;
void merge(int arr[],int l,int mid,int r){
    int n1 = mid-l+1;
    int n2 = r-mid;
    int arr1[n1];
    int arr2[n2];
    int k=0;
    for(int i=0;i<=n1;i++){
        arr1[i]=arr[l+i];
        k++;
    }
    for(int i=0;i<=n2;i++){
        arr2[i]=arr[i+mid+1];
    }
    int i=0,j=0;
    k=l;
    while(i<n1 && j<n2){
        if(arr1[i]<arr2[j]){
            arr[k]=arr1[i];
            k++;
            i++;
        }else{
            arr[k]=arr2[j];
            k++;
            j++;
        }
    }
    while(i<n1){
        arr[k]=arr1[i];
        k++;
        i++;
    }
    while(j<n2){
        arr[k]=arr2[j];
        k++;
        j++;
    }

}
void mergeSort(int arr[],int l,int r){
    if(l<r) {
        int mid = (l + r) / 2;
        mergeSort(arr, l, mid);
        mergeSort(arr, mid + 1, r);
        merge(arr,l,mid,r);
    }
}

int main(){
    int ab[]={5,3,2,1,4,3344,543,234,23,42,234,532,23,555,234,23,65,789,789,38,34,678,98,45,876,345,765,34,765,34};
    mergeSort(ab,0,29);
    cout<<"\n ans: ";
    for(auto i:ab){
        cout<<i<<",";
    }

    return 0;
}

