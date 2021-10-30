// Counting sort in Java 

import java.util.Arrays;

class CountingSort {
  void countSort(int arr[], int sz) {
    int[] output = new int[sz + 1];

    // Find the largest element of the array
    int max = arr[0];
    for (int i = 1; i < sz; i++) {
      if (arr[i] > max)
        max = arr[i];
    }
    int[] counter = new int[max + 1];

    // Initialize count array with all zeros.
    for (int i = 0; i < max; ++i) {
      counter[i] = 0;
    }

    // Store the count of each element
    for (int i = 0; i < sz; i++) {
      counter[arr[i]]++;
    }

    // Store the cummulative count of each array
    for (int i = 1; i <= max; i++) {
      counter[i] += counter[i - 1];
    }

    // Find the index of each element of the original array in count array
    for (int i = sz - 1; i >= 0; i--) {
      output[counter[arr[i]] - 1] = arr[i];
      counter[arr[i]]--;
    }

    // Copy the sorted elements into original array
    for (int i = 0; i < sz; i++) {
      arr[i] = output[i];
    }
  }

  // Driver code
  public static void main(String args[]) {
    int[] val = { 4, 2, 2, 8, 3, 3, 1 };
    int sz = val.length;
    CountingSort cs = new CountingSort();
    cs.countSort(val, sz);
    System.out.println("Sorted Array in Ascending Order: ");
    System.out.println(Arrays.toString(val));
  }
}

/*
Output = {1, 2, 2, 3, 3, 4, 8}
*/