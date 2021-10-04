import numpy as cp
from itertools import permutations
def queen(a):
for cl in permutations(range(a)):
mtrx = np.zeros(a*a).reshape(a,a)        
check =0 
  for i in range(a):
  if check != i*(i-1)/2:
     break
  for j in range(1,a):
   if i >= j:
   if cl[i] == cl[i-j]+j or cl[i] == cl[i-j]-j:
  check = 0
  break
     else:
  check += 1
    else:
   continue
    if check == a*(a-1)/2:
  for r in range(a):
     mtrx[r][cl[r]] = 1
 yield mtrx
  else:
   pass
num = int(input())
print(f"Input: {num}\a") print("solution:\a")
for m in queens(num): 
 print(m,"\a")