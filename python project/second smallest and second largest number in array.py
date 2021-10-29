from array import*
ar=array("i",[])
n=int(input("enter the length ofarray"))
for i in range(n):
    x=int(input("enter the value"))
    ar.append(x)
print("the array is=",ar)
def sort(ar):
    for i in range(len(ar)-1,0,-1):

        for j in range(i):
            if ar[j]>ar[j+1]:

                temp=ar[j]
                ar[j]=ar[j+1]
                ar[j+1]=temp

sort(ar)
print(ar)
pos=[ar[1],ar[-2]]
print("2small,2large=",pos)
