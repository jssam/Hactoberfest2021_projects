/*
 Bubble sort is a sorting algorithm that compares two adjacent elements and swaps them until they are not in the intended order.
*/
import java.util.Arrays;
public class BubbleSort {
    public static void main(String[] args) {
        int[] array = {5, 6, 9, 4, 7, 3, 2, 0, 1};
        bubbleSort(array);
    }
    static void bubbleSort(int[] array){
        boolean swapped = false;
        for (int i = 0; i < array.length - 1; i++) {
            for (int j = 0; j < array.length - i - 1; j++) {
                if(array[j] > array[j + 1]){
                    int temp = array[j + 1];
                    array[j + 1] = array[j];
                    array[j] = temp;
                    swapped = true;
                }
            }
            if(!swapped){
                break;
            }
        }
        System.out.println(Arrays.toString(array));
    }
}