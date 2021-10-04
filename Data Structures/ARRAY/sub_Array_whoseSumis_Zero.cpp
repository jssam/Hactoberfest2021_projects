#include<iostream>
#include<unordered_set>


using namespace std;

bool subArrayExists(int a[], int n)
    { unordered_set<int>s;
    int sum=0;
    for(int i=0;i<n;i++){
        sum+=a[i];
       
        if(sum==0)
            return true;
        
        if(s.find(sum)!=s.end())
        return true;
         s.insert(sum);
        
    }
    return false;
    }

int main(){
int a[]={1,2,3,-6};
int n=sizeof(a)/sizeof(a[0]);
int res=subArrayExists(a,n);
if(res==0){
    cout<<"false"<<endl;
}
else cout<<"true"<<endl;
    return 0;
}
© 2021 GitHub, Inc.
Terms
Privacy
