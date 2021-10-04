//
// Created by abhi on 16/08/2021.
//
//check array is sorted or not


#include<iostream>
using namespace std;
bool chek(int arr[], int i){ //check arr is sorted
    if(i==0)return true; //base
    if(arr[i]<arr[i-1])return false;
    return chek(arr,i-1); //recursion
}
// print no. in decreasing order
int prnt(int a){
    if(a==0)return 0;
    cout<<a<<",";
    return prnt(a-1);

}


//print increasing order
int prntinc(int a,int n=1){
    if(n>a)return -1; //base
    cout<<n<<",";
    return prntinc(a,n+1); //recursion
}
//apna college approch
void prninnc(int a){
    if(a==0)return;
    prninnc(a-1);
    cout<<a<<",";
}

//first occurrence of a num in giving array
int firstocc (int arr[],int num ,int len,int i=0){
    if(i==len)return -1;
    if(arr[i]==num)return  i;
    return firstocc(arr,num,len,i+1);
}
int lasocc(int arr[],int num,int len){
    if(len==0)return -1;
    if(arr[len]==num)return len;
    return lasocc(arr,num,len-1);
}


int main (){
    int arr[]= {3 ,2,3,9,5,2,11,3};
    cout<<chek(arr,7)<<endl;
    prnt(7);
    cout<<"\n";
    prntinc(7);
    cout<<"\n";
    prninnc(7);
    cout<<endl;
    cout<<firstocc(arr,11,8)<<endl;
    cout<<lasocc(arr,2,8)<<endl;
    return 0;
}
