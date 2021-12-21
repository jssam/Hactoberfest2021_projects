from random import randint

x = randint(1,9)

print("Guess the number below 10:")

guess = int(input("Guess: "))

print(guess)

if guess != x:

    print("Wrong guess, the number is "+str(x))

else:

    print("Guessed correctly")

