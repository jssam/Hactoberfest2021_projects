//**Java Code**

//Print Matrix in Spiral order

public class spiral {

	public static void main(String[] args) {
		
		int[][] arr = { { 1, 2, 3, 4, 5 }, { 6, 7, 8, 9, 10 }, { 11, 12, 13, 14, 15 }, { 16, 17, 18, 19, 20 },
				{ 21, 22, 23, 24, 25 } };
        
		int total = arr.length * arr[0].length;
    
		int count = 0, min_row = 0, max_row = arr.length - 1, min_col = 0, max_col = arr[0].length - 1;
    
		while (count < total) {
			for (int i = min_row; i <= max_row && count < total; i++) {
				System.out.print(arr[i][min_col] + " ");
				count++;
			}

			min_col++;
			for (int i = min_col; i <= max_col && count < total; i++) {
				System.out.print(arr[max_row][i] + " ");
				count++;

			}

			max_row--;
			for (int i = max_row; i >= min_row && count < total; i--) {
				System.out.print(arr[i][max_col] + " ");
				count++;

			}

			max_col--;
			for (int i = max_col; i >= min_col && count < total; i--) {
				System.out.print(arr[min_row][i] + " ");
				count++;

			}

			min_row++;
		}

	}
}
