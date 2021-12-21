#include<bits/stdc++.h>
using namespace std;

int main()    
{    
int n,r,sum=0,temp;    
cout<<"enter the number to be checked =";    
cin>>n;
temp=n;

while(n>0)    
{    
r=n%10;    
sum=(sum*10)+r;    
n=n/10;    
} 

if(temp==sum)    
  cout<<"Is palindrome number ";    
else    
  cout<<"Not palindrome";   

return 0;  
}
