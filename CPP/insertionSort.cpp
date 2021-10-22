// Insertion sort in C++

#include <iostream>
using namespace std;
void insertionSort(int array[], int size) {   //insertion sort algo start
  for (int step = 1; step < size; step++) {
    int key = array[step];
    int j = step - 1;

    // Compare key with each element on the left of it until an element smaller than
    // it is found.
    // For descending order, change key<array[j] to key>array[j].
    while (key < array[j] && j >= 0) {
      array[j + 1] = array[j];
      --j;
    }
    array[j + 1] = key;
  }
}
int main(){                 //main function
int arr ={2,3,5,6};         //demo array
 int n = sizeof(arr) / sizeof(arr[0]);  //array length
 insertionSort(arr, n);
  for(int  i= 0;i<n;i++){
  cout<<arr[i];
  }
}
