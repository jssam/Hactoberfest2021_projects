import java.util.Scanner;
class DeleteDuplicate
{
    int s=0;
    int a[];
    int p=0,c=0;
    DeleteDuplicate(int s1){
        s=s1;
        a=new int[s];
    }
    Scanner sc=new Scanner(System.in);
    void input(){
        System.out.println("Enter Elements");
        for(int i=0;i<s;i++){
            a[i]=sc.nextInt();
        }
    }
    void compute(){
        p=0,c=0;
        for(int i=0;i<s-c;i++){
            p=a[i];
            for(int j=0;j<s-c;j++){
                if(i!=j){
                    if(p==a[i]){
                        c++;
                        for(int k=j;k<(s-c);k++)
                        {
                            a[k]=a[k+1];
                        }
                    }
                }
            }
        }
    }
    void display(){
        for(int j=0;j<(s-c);j++){
            System.out.print(a[j]+" ");
        }
    }
    public static void main(String args[]){
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter size of array");
        int s=sc.nextInt();
        DeleteDuplicate obj=new DeleteDuplicate(s);
        obj.input();
        obj.compute();
        obj.display();
    }
}