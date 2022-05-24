user1= input("Player1 name : ")
user2 = input ("Player2 name : ")

flag=1
while 1:
    user1_choice = input(user1 + ", do you want to choose rock, paper or scissors?").lower()
    user2_choice = input(user2+ ", do you want to choose rock, paper or scissors?").lower()


    if user1_choice == user2_choice:
        print("It's a tie!")
    elif user1_choice == 'rock':
        if user2_choice == 'scissors':
            print("Rock wins")
        else:
            print("Paper wins!")
    elif user1_choice == 'scissors':
        if user2_choice == 'paper':
            print("Scissors win")
        else:
            print("Rock wins!")
    elif user1_choice == 'paper':
        if user2_choice == 'rock':
            print("Paper win")
        else:
            print("Scissors wins!")
    else:
        print("Invalid input! You have not entered rock, paper or scissors, try again.")

    repeat=input("Do you want to play again?Yes/No").lower()

    if repeat=="yes":
        pass
    elif repeat=="no":
        raise SystemExit
    else:
        print("You entered an invalid option. Exiting now.")
        raise SystemExit
	
        


