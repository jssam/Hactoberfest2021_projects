import random

player = input().upper()

computer = random.choice(["ROCK","PAPER","SCISSOR"])

print("You Chose:",player,"\n")

print("Computer Chose:",computer)

print("_______________________________")

if (player=="ROCK"):

    if (computer=="ROCK"):

        print ("It's A Draw!")

    elif (computer=="PAPER"):

        print ("Oh no! You Lost!")

    elif (computer=="SCISSOR"):

        print ("You Won! ^^")

elif (player=="PAPER"):

    if (computer=="ROCK"):

        print ("You Won! ^^")

    elif (computer=="PAPER"):

        print ("It's A Draw!")

    elif (computer=="SCISSOR"):

        print ("Oh no! You Lost!")

    

elif (player=="SCISSOR"):

    if (computer=="ROCK"):

        print ("Oh no! You Lost!")

    elif (computer=="PAPER"):

        print ("You Won! ^^")

    elif (computer=="SCISSOR"):

        print ("It's A Draw!")

    

else:

    print("Invalid Input!\nTry Again! ^^")

print("_______________________________")

