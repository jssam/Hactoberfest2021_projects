###################### Random Import ##############################
import random
game_character = ["s", "p", "c"]
##################### Selecting Game ##############################
try:
    name = str(input("Enter Your Name\n"))
except Exception as error:
    print(error)
print(f"{name} Please Select The Game\n1.Stone Paper Scissor\n2.Guessing Number\nAs 1 and 2")
game = int(input("Enter Game No\n"))
#################################Stone Paper Scissor#########################
if game==1:

    print(f"{name} Welcome to the Game\nYou Have 10 Lfe To win From Pc\nChoices are Stone(s),Paper(p),Scissor(c)")
    life = 0
    no_of_life = 10
    ###################point area###############################
    player_score = 0
    computer_score = 0
    ################### Gaming Area ###########################
    while life < no_of_life:
        player_choice = input("Enter Your Choice as s,p,c\n")
        computer_choice = random.choice(game_character)


        if computer_choice == player_choice:
            print("Tie\n")
            print(f"{name} Your Score is {player_score}\nComputer Score is {computer_score}")
        elif computer_choice=="c" and player_choice =="p":
            print("You Lost :(")
            print("Computer Thinks Scissor ")
            computer_score+=1
            print(f"{name} Your Score is {player_score}\nComputer Score {computer_score}")
        elif computer_choice=="p" and player_choice=="c":
            print("You Win :)")
            print("Computer Thinks Paper")
            player_score+=1
            print(f"{name} Your Score is {player_score}\nComputer Score {computer_score}")
        elif computer_choice=="s" and player_choice=="c":
            print("You Lost :(")
            print("Computer Thinks Stone")
            computer_score+=1
            print(f"{name} Your Score is {player_score}\nComputer Score {computer_score}")
        elif computer_choice=="c" and player_choice=="s":
            print("You Win :)")
            print("Computer Thinks Scissor")
            player_score+=1
            print(f"{name} Your Score is {player_score}\nComputer Score is {computer_score}")
        elif computer_choice=="p" and player_choice=="s":
            print("You Lost :(")
            print("Computer Thinks Paper")
            computer_score+=1
            print(f"{name} Your Score is {player_score}\nComputer Score is {computer_score}")
        elif computer_choice=="s" and player_choice=="p":
            print("You Win :)")
            print("Computer Thinks Stone")
            player_score+=1
            print(f"{name} Your Score is {player_score}\nComputer Score is {computer_score}")
        else:
            print("Please Enter Correct Option")
        life = life + 1
        print(f"{name} Life Left:{no_of_life - life}")
    #######################################Leader Board####################################
    if computer_score==player_score:
        print(f"{name} Match Ties Between You and Computer")
    elif player_score>computer_score:
        print(f"{name} You Wins by {player_score-computer_score} scores from Computer")
    else:
        print(f"{name} you lost from Computer from {computer_score-player_score} scores")
#################################### Guessing Number####################################
else:
    guessing_number = 17
    life = 0
    no_of_life = 6
    while life<no_of_life:
        try:
            number = int(input("Please Enter The Number You Guessed\nMust be Between 0-40\n"))
        except Exception as error:
            print(error)

        if number==guessing_number:
            print(f"{name} You Win :)")
            break
        elif number>guessing_number:
            print(f"{name} Please Guess a Smaller Number")
        elif number<guessing_number:
            print(f"{name} Please Guess a Bigger Number")
        else:
            print(f"Game Over")
        life = life + 1
        print(f"{name} life left: {no_of_life-life}")

    ################################Game by Naitik Kapadia#################
