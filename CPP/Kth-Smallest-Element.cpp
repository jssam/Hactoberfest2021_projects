#include <iostream>

using namespace std;

int main()
{
    int n,k;
    cout<<"Enter the number of elements: ";
    cin>>n;
    cout<<"Enter k to find kth smallest Element: ";
    cin>>k;
    int arr[n];
    
    cout<<"Enter "<<n<<" Elements of the array\n";
    
    for(int i =0 ; i<n;i++){
        cin>>arr[i];
    }
    
        for(int i =0;i<n;i++){
            for(int j =1 ;j<n-i;j++){
                if(arr[j]<arr[j-1]){
                    int temp = arr[j];
                    arr[j] = arr[j-1];
                    arr[j-1] = temp;
                }
            }
        }
        
    
    
    for(int i =0 ; i<n;i++){
        cout<<arr[i]<<" ";
    }
    cout<<endl;
    cout<<"k th smallest Element is: "<<arr[k-1]<<endl;    
    
    return 0;
}

