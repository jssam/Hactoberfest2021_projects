//
// Created by abhi on 02/09/2021.
//
//to form a wave like structure i.e ek badaa , ek chota ,(2,5,1,3,1,9,6,7) sorting gayi maa chudane

#include<iostream>
using namespace std;
void swap(int arr[],int l,int r){
    int temp = arr[l];
    arr[l]= arr[r];
    arr[r]=temp;
}
void wavesort(int arr[],int n){
    for(int i=0;i<n;i+=2){
        if(arr[i]>arr[i-1]){
            swap(arr,i,i-1);
        }
        else if(arr[i]>arr[i+1] )swap(arr,i,i+1);
    }
}
int main(){
    int arr[]= {2,3,1,5,6,7,8,9};
    wavesort(arr,8);
    for(int i:arr){
        cout<<i<<",";
    }

    return 0;
}