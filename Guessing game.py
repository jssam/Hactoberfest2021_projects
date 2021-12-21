import random

print('Welcome in ths program')

print()

print()

try:

    a=random.randint(1,10)

    b=int(input('guess no 1 to 10 =  '))

    print()

    print('your no. is ',b)

    print('my no is ',a)

    if(a==b):

        print('you won')

    else:

        print('try again')

except (ValueError):

    print("Enter a number only")
