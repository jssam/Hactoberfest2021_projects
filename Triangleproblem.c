// Refer question for details
/* 

Problem
You are given n triangles, specifically, their sides a, b and c. Print them in the same style but sorted by their areas from the smallest one to the largest one. It is guaranteed that all the areas are different.
*/

// Solution

#include <stdio.h>
#include<stdlib.h>
#include<math.h>

struct triangle{
    int a;
    int b;
    int c;
};

void swap(int a, int b){
    int temp = a;
    a = b;
    b = temp;
}

// void swap(struct )

int main()
{
    // declaration
    int i,j,n = 3;
    struct triangle t[n];
    int area[n];
    
    // input
    printf("Enter 3x3 matrix:\n");
    for(i=0;i<n;i++){
        scanf("%d%d%d",&t[i].a,&t[i].b,&t[i].c);
    }
    
    // calculation
    for(i=0;i<n;i++){
    float p  = (t[i].a + t[i].b + t[i].c)/2.0;
    area[i] = pow(p*(p-t[i].a)*(p-t[i].b)*(p-t[i].c),0.5);
    }
    
    // sorting
    for(i=0;i<n;i++){
        for(j=0;j<n-1-i;j++){
            if(area[j]>area[j+1]){
                swap(area[j],area[j+1]);
                swap(t[j].a,t[j+1].a);
                swap(t[j].b,t[j+1].b);
                swap(t[j].c,t[j+1].c);
            }
        }
    }
    // output  
    printf("\nThe output is:\n"); //comment this line if required
    for(i=0;i<n;i++){
        printf("%d %d %d\n",t[i].a,t[i].b,t[i].c);
        
    }
    
    return 0;
}
  
  
/*The best way to calculate a volume of the triangle with sides a, b and c is Heron's formula:

S = [p x (p - a) x (p - b) x (p - c)]^1/2 where p = a + b + c / 2.

Input Format 
First line of each test file contains a single integer n. n lines follow with a, b and c on each separated by single spaces.

Constraints
1 <= n <= 100
1 <= a, b, c <= 70
a + b > c,a + c > b + c > a
Output Format
Print exactly n lines. On each line print 3 integers separated by single spaces, which are a, b and c of the corresponding triangle.

Sample Input 0

3
7 24 25
5 12 13
3 4 5
Sample Output 0

3 4 5
5 12 13
7 24 25
Explanation 0

The square of the first triangle is 84. The square of the second triangle is 30. The square of the third triangle is 6. So the sorted order is the reverse one.
*/




