/*
	Moore Voting Algorithms gives the element that is
	in majority in an array

	Majority element : It'a any element that is occurring
	more than N/2 times in an array where N is size of array

*/

#include<bits/stdc++.h>
using namespace std;


// Moore Voting Algorithm
void moore_voting_algorithm(int arr[],int n){
	// maj_count is for the count of majority element
	// maj is the majority element
	int maj_count=0,maj=arr[0];

	// First we need to find if majority exists or not
	for(int i=0;i<n;i++){
		if(arr[i] == maj)
			maj_count++;
		else
			maj_count--;

		if(maj_count==0){
			maj=arr[i];
			maj_count=1;
		}
	}
	// Now maj holds the possible majority element
	// We count the occurrences of maj in array
	maj_count=0;
	for(int i=0;i<n;i++)
		if(maj==arr[i])
			maj_count++; 
	// if they are more than n/2
	if(maj_count > n/2)
		cout<<"Majority : "<<maj;
	else
		cout<<"No Majority exists in the array";

}

int main(){
	int n;
	cout<<"Enter the size of Array : ";
	cin>>n;

	int arr[n];
	// Inputting elements in array
	cout<<"Enter the elements of array\n";
	for(int i=0;i<n;i++)
		cin>>arr[i];
	moore_voting_algorithm(arr,n);
	return 0;
}

/*
	Sample Input #1
	Enter the size of Array : 7
	Enter the elements of array :
	7 1 1 1 4 3 1
	Majority : 1
*/