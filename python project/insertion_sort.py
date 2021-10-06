def insertion_sort(a):
  n=len(a)
  for i in range(1,n):
    key=a[i]
    while (j>=0 and key<a[j]):
      a[j+1]=a[j]
      j=j-1
    a[j+1]=key 