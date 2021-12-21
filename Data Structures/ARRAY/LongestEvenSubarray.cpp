/*
You are given an array A of N integers: A1, A2, ..., AN. You need to find a longest contiguous subarray in the array such that each integer in this subarray is an even integer, and output its length.

A contiguous subarray is of the form Ai, Ai+1, ..., Aj, for some i and j.
*/

include<bits/stdc++.h>
using namespace std;

int main(){
		while(t-- >0){
		    int size;
        cin>>size;
		    int arr[size];
		    for (int i=0; i<size; i++){
		        cin>>arr[i];
		    } 
		    int ans = 0, count=0;
		    for (int i=0; i<size; i++){
		        if(arr[i]%2==0){
		           count++;
		           ans = max(ans,count);
		        }
		        else{
		            count = 0;
		        }
		    } 
		    cout<<ans>>endl;
return 0;
}

/*
Input:
3
4
1 2 2 4
3
2 4 6
5
2 3 2 2 5

Output:
3
3
2
*/
