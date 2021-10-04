/*
Lets create a bank account. Create a class named 'BankAccount' with the following data members
1 - Name of depositor 
2 - Address of depositor
3 - Type of account
4 - Balance in account
5 - Number of transactions
Class 'BankAccount' has a method for each of the following 1 - Generate a unique account number for each depositor
For first depositor, account number will be BA1000, for second depositor it will be BA1001 and so on
2 - Display information and balance of depositor
3 - Deposit more amount in balance of any depositor
4 - Withdraw some amount from balance deposited
5 - Change address of depositor
After creating the class, do the following operations
1 - Enter the information (name, address, type of account, balance) of the depositors. Number of depositors are to be entered by user.
2 - Print the information of any depositor.
3 - Add some amount to the account of any depositor and then display final informaion of that depositor
4 - Remove some amount from the account of any depositor and then display final informaion of that depositor
5 - Change the address of any depositor and then display the final information of that depositor
6 - Randomly repeat these processes for some other bank accounts and after that print the total number of transactions.
*/
public class BankAccount {
    private String Accno;
    private String name;
    private String actype;
    private String address;
    private int balance;
    private int nooftran;
    private static int c;

    public void setAccno(String accno) {
        Accno = accno;
    }

    public BankAccount(String name, String actype, String address, int balance) {
        this.name = name;
        this.actype = actype;
        this.address = address;
        this.balance = balance;
    }
    public static String setAccn(){
      return(("BA"+Integer.toString(1000+(c++))));

    }
    public void display(){
        System.out.println(Accno);
        System.out.println(name);
        System.out.println(actype);
        System.out.println(address);
        System.out.println(balance);
        System.out.println(nooftran);
    }
    public void deposit(int x){
        balance=balance+x;
        this.nooftran++;
        display(); }
        public void withdraw(int x){
        if(balance>=x)
        {balance=balance-x;
        this.nooftran++;}
        display();
        }
        public void changeaddress(String address){
        this.address=address;
        }

}
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        BankAccount ba[]=new BankAccount[n];
        ba[0]=new BankAccount("BOBBY","Savings","Wallstreet",4567);
        ba[0].setAccno(ba[0].setAccn());

        ba[0].display();
        ba[0].deposit(5000);
        ba[0].withdraw(2000);
        ba[1]=new BankAccount("BOB","Savings","Wallstreet",4567);
        ba[1].setAccno(ba[0].setAccn());

        ba[1].display();
        ba[1].deposit(5000);
        ba[1].withdraw(2000);
        ba[2]=new BankAccount("JON","Savings","Wallstreet",4567);
        ba[2].setAccno(ba[0].setAccn());

        ba[2].display();
        ba[2].deposit(5080);
        ba[2].withdraw(200);
        ba[1].display();
}
}
