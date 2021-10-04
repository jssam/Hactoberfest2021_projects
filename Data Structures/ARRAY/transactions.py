withdrawAmount,accountBal=map(float,input().split(' '))
if withdrawAmount%5==0:
    out=accountBal-withdrawAmount-.50
    if out<0:
        print(accountBal)
    else:
        print(out)
elif withdrawAmount%5!=0:
    print(accountBal)