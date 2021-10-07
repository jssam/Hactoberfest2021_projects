from collections import deque
testcase=int(input())
for _ in range(testcase):
    NumOfArray,NumOfSteps = map(int,input().split(" "))
    arr=list(map(int,input().split(" ")))
    lol=deque(arr)
    #print(*(arr[-NumOfSteps:]+arr[:-NumOfSteps]))
    lol.rotate(NumOfSteps)
    print(*lol)