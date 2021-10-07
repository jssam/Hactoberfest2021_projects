# Find kth bit in Nth binary string 
Sn is defined as..  
S1 = "0"  
Sn = Sn-1 + "1" + reverse(invert(Sn-1)) for n > 1    
Where + denotes the concatenation operation, reverse(x) returns the reversed string x, and invert(x) inverts all the bits in x (0 changes to 1 and 1 changes to 0).  
**For example **   

- S1 = "0"
- S2 = "011"
- S3 = "0111001"
- S4 = "011100110110001"  
**Return the kth bit in Sn.** 
```c++
#include<iostream>
#include<math.h>
using namespace std;

 char findKthBit(int n, int k) {
        if(n==1)
            return '0';
        int mid=(pow(2,n))/2;        // mid will always point to 1
        if(k<mid)
            return findKthBit(n-1,k);    // observe the pattern as the first half is same as the last one
        else if(k==mid)
            return '1';
        else
        {  char ans;
           ans=findKthBit(n-1,2*mid-k);
         if(ans=='0')
             return '1';
         else
             return '0';
        }
    }
  int main()
  {
  int n,k;                          
  cin>>n>>k;
  char answer=findKthBit(n,k);
  cout<<answer;
  return 0;
  }
  ```
