#include <iostream>

using namespace std;

int main()
{
   int n;
   cout<<"Enter the number of elements: ";
   cin>>n;
   int a[n];
   
   cout<<"Enter all the terms of the array\n";
   
   for(int i =0;i<n;i++){
       cin>>a[i];
   }
   
   int s =0;
   
   for(int i =0;i<n;i++){
       if(a[i]<0){
           int temp = a[i];
           a[i] = a[s];
           a[s]=temp;
           s++;
       }
   }
   
  cout<<"The final array is: \n";
   
   for(int i =0;i<n;i++){
       cout<<a[i]<<" ";
   }
   
}

