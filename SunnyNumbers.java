import java.util.Scanner;  
public class SunnyNumber
{   
public static boolean isSunnyNumber(int number)   
{  
if(Math.sqrt(number+1)%1 == 0)  
return true;  
else   
return false;  
}  

public static void main(String args[])   
{   
int lr = 0, ur = 0;  
Scanner scan = new Scanner(System.in);  
System.out.print("Enter lower range: ");  
lr = scan.nextInt();  
System.out.print("Enter upper range: ");  
ur = scan.nextInt();  
System.out.println("The Sunny number from "+ lr + " to "+ ur+" are: ");  
for(int i=lr; i<=ur; i++)   
{   
if(isSunny(i))  
System.out.print(i +" ");  
}  
}  
}  