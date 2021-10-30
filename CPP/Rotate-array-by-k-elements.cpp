#include <iostream>

using namespace std;

int main()
{
    int n,k;
    cout<<"Enter the size of the array: ";
    cin>>n;
    
    int arr[n];
    
    cout<<"Enter all the elements of the array: \n";
    
    for(int i =0;i<n;i++){
        cin>>arr[i];
    }
    
    cout<<"Enter the number by which you want to rotate the array: ";
    cin>>k;
    
    int temp[k];
    
    for(int i=n-k,j=0;i<n;i++ && j++){
        temp[j]=arr[i];
    }
    
    
    for(int i=n-k-1;i>=0;i--){
        arr[i+k]=arr[i];
    }
    
    for(int i =0;i<k;i++){
        arr[i]=temp[i];
    }
    
    cout<<"\nThe final array is: ";
    
    for(int i =0;i<n;i++){
        cout<<arr[i]<<" ";
    }
    
   return 0;
}

