#include <stdio.h>
#include<conio.h>
#include<math.h>

int main()
{

    int a[20], k, n, i, op, b, del, inser, position, update, newele, sea, j;
    printf("Enter the numer of elements in Queue: ");
    scanf("%d", &n);
    printf("\nEnter the element of array: \n");

    for (i = 0; i < n; i++)
    {

        scanf("%d", &a[i]);
    }

    for (j = 0; j < 5; j++)
    {

    printf("\nWhich opertion do you want to perform:\n1.Display\n2.Insert\n3.Delete\n4.Peep\n5.Exit\n(just enter the number)\n\n\n====>");
    scanf("%d",&op);
if(op==1){
            printf("\n\n");
            for (i = 0; i < n; i++)
            {
                printf("%d ", a[i]);
            }

}

else if(op==2){
            if (n > 20)
            {
                printf("\nQueue Overflow");
            }

            else
            {

                printf("\nWhat element you want to insert: ");
                scanf("%d", &inser);
                printf("\nAt which position: ");
                scanf("%d", &position);
                for (i = n - 1; i >= position - 1; i--)
                {
                    a[i + 1] = a[i];
                }

                a[position - 1] = inser;
                for (i = 0; i <= n; i++)
                {
                    printf("%d ", a[i]);
                }
            }


}
 


else if(op==3){
            if (n <= 0)
            {
                printf("\nUnderflow");
            }

            else
            {

                printf("Element you want to delete: ");
                scanf("%d", &del);
                for (i = 0; i < n; i++)
                {

                    if (del != a[i])
                    {

                        printf("%d ", a[i]);
                    }

                    else

                    {
                        continue;
                    }
                }
            }

}








else if(op==4)
 
{
            printf("\nThe number you want to search: ");
            scanf("%d", &sea);
            for (i = 0; i < n; i++)
            {

                if (a[i] == sea)
                {

                    printf("\nIt is at %d position from starting", i + 1);
                }
            }

}


else if(op==5){
            break;

}

printf("\n\n-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x\n\n");
    }

    return 0;
}
