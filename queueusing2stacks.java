//A basic queue has the following operations:

//Enqueue: add a new element to the end of the queue.
//Dequeue: remove the element from the front of the queue and return it.
//////////////////////////////////////////////
/////////////////////////////////////////////
          //INPUT FORMAT//
//1 x: Enqueue element  into the end of the queue.
//2: Dequeue the element at the front of the queue.
//3: Print the element at the front of the queue.
import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Stack<Integer> s1=new Stack<>();
        Stack<Integer> s2=new Stack<>();
        Scanner sc=new Scanner(System.in);
	//Here n are total no. of operations.
        int n=sc.nextInt();
       for(int i=0;i<n;i++)
       {
           int c=sc.nextInt();
           if(c==1)
           {	int x=sc.nextInt();   //Here x is element to be pushed.
               s1.push(x);
           }
          else if(c==2)
          {
              if(s2.isEmpty())
              {
                  while(!s1.isEmpty())
                  {
                      s2.push(s1.pop());
                  }
              }
              s2.pop();
          }
          else if(c==3){
              if(s2.isEmpty())
              {
                  while(!s1.isEmpty())
                  {
                      s2.push(s1.pop());
                  }
              }
              System.out.println(s2.peek());
          }
           
       }
    }
}
