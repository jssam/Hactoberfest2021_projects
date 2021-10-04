//
// Created by abhi on 02/09/2021.
//

//O(max(Ai,N))
#include<iostream>
#include <vector>
using namespace std;
/*
 * it has only one void function
 * count(arr, n)
 *      k = arr[0]
 *      for(0 to n)  k =  max(k,arr[i])
 *    2n loop
 *      for(0  to n) temp[ar[i]]++
 *    3rd loop
 *      for(0 to k) temp[k]+=temp[k-1] //temp should  be vector of k+1 size otherwise it wont work
 *    4th loop
 *      for(n to 0) output[--temp[arr[i]]] = arr[i]   (mstk)
 *    5th loop
 *      for (0 to n) arr[i] = output[i]
 */

void countSort(int arr[], int n){
    int k = arr[0];
    for(int i=0;i<n;i++){
        k= max(k,arr[i]);
    }
    //2n loop
     vector<int> temp(k+1,0);
    for(int i=0;i<n;i++){
        temp[arr[i]]++;
    }
    //3rd loop
    for(int i=1;i<=k;i++){
        temp[i]+=temp[i-1];
    }
    int output[n];
    //4th loop
        for(int i=n-1;i>=0;i--){
            output[--temp[arr[i]]]=arr[i];
        }
    //5th loop
        for(int i=0;i<n;i++){
            arr[i]=output[i];
        }
}
int main(){
int arr[]={8,4,5,6,7,4,4,2,5,6};
countSort(arr,10);
for(auto i:arr){
    cout<<i<<",";
}
    return 0;
}