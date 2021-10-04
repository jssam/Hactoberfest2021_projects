//
// Created by abhi on 17/08/2021.
//


#include<iostream>
#include <string>
using namespace std;

int tillingways(int n){
    if(n==0)return 0;
    if(n==1)return 1;
    return tillingways(n-1)+tillingways(n-2);
}

//friends pairing problem
int frndspp(int n){
    if(n==1 || n==0 ||n==2)return n;

    return ( frndspp(n-1) )+ (frndspp(n-2) *(n-1));
}
 //knapsack 0-1 priblem

 int knapsack(int w[],int val[],int n, int wt){
    if(n==0 ||wt==0)return 0;
    if(wt<w[n-1])return knapsack(w,val,n-1,wt);
     return max(( knapsack(w,val, n-1,wt-w[n-1]) +val[n-1]) , knapsack(w,val,n-1,wt));
}
//permutations

void strpermutaion  (string a,string n=""){
    if(a.length()==0){cout<<n<<endl;return;}
   for(int i=0;i<a.length();i++){
       char tem = a[i];
       string ros = a.substr(0,i)+a.substr(i+1);
       strpermutaion(ros,n+tem);
   }
}

//possible number to finish path like sanpsidhi using dice

int findingways(int n){
    if(n==0 || n==1 || n==2)return n;
    if(n>=6) return findingways(n-1) + findingways(n-2)+ findingways(n-3) + findingways(n-4)+ findingways(n-5) + findingways(n-6);
    if(n==5) return findingways(n-1) + findingways(n-2)+ findingways(n-3) + findingways(n-4)+ findingways(n-5);
    if(n==4) return findingways(n-1) + findingways(n-2)+ findingways(n-3) + findingways(n-4);
    if(n==3) return findingways(n-1) + findingways(n-2)+ findingways(n-3);
}

int main(){
    cout<<tillingways(4)<<endl;
    cout<<frndspp(4)<<endl;
    int val[]={100,50,150};
    int w[] ={10,20,30};
    cout<<knapsack(w,val,3,50)<<endl;
    cout<<endl;
    strpermutaion("ABC");
    cout<<endl;
    cout<<findingways(6);
    return 0;
}