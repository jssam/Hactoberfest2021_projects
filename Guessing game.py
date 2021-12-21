import random

print('WELOCOME IN THIS PROGRAM')

print()

print()

try: 
     #generating a random number between 1 and 10)
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
