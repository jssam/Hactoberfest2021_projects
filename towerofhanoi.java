import java.util.*;

class Solution
{
public static void towerOfHanoi(int n, char src, char helper, char dest)
{
    if (n == 1)
    {
        System.out.println("Transfer disk "+n+" from "+src+" to "+dest);
        return;
    }
    towerOfHanoi(n-1,src,dest,helper);
    System.out.println("Transfer disk "+ n + " from " +
                       src +" to " + dest );
    towerOfHanoi(n - 1,helper,src,dest);
}
 
// Driver code
public static void  main(String args[])
{
    int n = 2; // Number of disks 
    towerOfHanoi(n, 'S', 'H', 'D'); // A, B and C are names of disks
}
}