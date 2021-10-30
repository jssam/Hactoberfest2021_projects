import java.util.*;
class SmithNumber
{  
static Scanner sc = new Scanner(System.in); 
static int findSumPrimeFactors(int n)  
{  
int i=2, sum=0;  
while(n>1){ 
if(n%i==0){
sum=sum+findSumOfDigit(i);  
n=n/i;  
}  
else{  
do  
{  
i++;  
}while(!isPrime(i));  
}  
} 
return sum;  
}  
static int findSumOfDigit(int n)  
{  
int s=0;  
while(n>0)  
{      
s=s+n%10;    
n=n/10;  
}  
return s;  
}  
static boolean isPrime(int k)  
{  
boolean b=true;  
int d=2;  
while(d<k)  
{  
if(k%d==0)  
b=false;  
d++;  
}  
return b;  
}   
public static void main(String args[])  
{  
System.out.print("Enter a number");   
int n=sc.nextInt();   
int sum1 = findSumOfDigit(n);   
int sum2 = findSumPrimeFactors(n);  
if(sum1==sum2)   
System.out.print("The given number is a smith number.");   
else  
System.out.print("The given number is not a smith number.");  
}  
}  