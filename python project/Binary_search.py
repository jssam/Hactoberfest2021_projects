def search(a:list,element,x,y):
     mid=y+1//2
     if(a[mid]==element):
          return mid
     elif(element>a[mid]):
          return search(a,element,mid+1,y)
     elif(element<a[mid]):
          return search(a,element,0,mid-1)
     else:
          return "not found"

import random          
L1=[x for x in range(1,90)]
element=random.randint(1,90)
print(element)
print(search(L1,element,0,len(L1)))
