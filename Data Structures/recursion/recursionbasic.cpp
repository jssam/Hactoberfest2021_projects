//
// Created by abhi on 16/08/2021.
//
#include <iostream>
using namespace std;
int power (int a, int b){
    if(b==1)return a;
    return a * (power(a , b-1));
}
int Prevsum(int a){
    if(a==1)return 1;
    return a+ Prevsum(a-1);
}
int febonaciNum(int a){
    if(a==0 || a==1) return 1;
    return febonaciNum(a-1) + febonaciNum(a-2);
}


int main(){
int a,b;
cin>>a>>b;
cout<<"power: "<<power(a,b);
cout<<"\nprevsum: "<<Prevsum(a);
cout<<"\nfebonaci: "<<febonaciNum(a);
    cout<<"\nHElloWORLD";
    return 0;
}
