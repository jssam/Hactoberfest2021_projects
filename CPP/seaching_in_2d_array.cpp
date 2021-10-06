# include <iostream>
using namespace std;

int main()
{
    int n,m ;
    cout<<"Enter number of rows : ";
    cin>>n;
    cout<<"Enter number of column : ";
    cin>>m;

    int key;
    cout<<"Enter key u wanna search :";
    cin>>key;

    int arr[n][m];
    cout<<"Enter elements of array : ";
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < m; j++)
        {
            cin>>arr[i][j];
        }
    }

    cout<<"Matrux is \n ";
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < m; j++)
        {
            cout<<arr[i][j]<<" ";
        }
        cout<<"\n";
    }

    for(int i =0; i< n; i++)
    {
       for(int j = 0; j < m; j++)
        {
           if(arr[i][j]==key)
            {
               cout<<"Elements found at"<<" "<<i<<","<<j<<endl;
            }
            else
            {
               cout<<"Element not found at"<<" "<<i<<","<<j<<endl;
            }
        }
    }
   
    return 0;
}
