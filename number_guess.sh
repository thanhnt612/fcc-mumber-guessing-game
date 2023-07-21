#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

MAIN_MENU(){
  
echo "Enter your username:"
read USERNAME
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
   if [[ -z $USER_ID ]]
   then
      echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
      #Insert a new username
      NEW_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')");
      #Get user id
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
   else
      #Get a number of game played
      PLAY_GAMES=$($PSQL "SELECT COUNT(user_id) FROM users WHERE user_id=$USER_ID")
      #Get best game
      BEST_GAME=$($PSQL "SELECT MIN(best_game) FROM games WHERE user_id=$USER_ID")
      echo -e "\nWelcome back, $USERNAME! You have played $PLAY_GAMES games, and your best game took $BEST_GAME guesses."
   fi
   GAME
}
GAME(){
   SECRET_GAME=$(( ( $RANDOM % 1000 )  + 1 ))
   COUNT_PLAY=0
   GUESSED=0
   echo -e "\nGuess the secret number between 1 and 1000:"
   while [[ $GUESSED = 0 ]]
   do
       read GUEST_NUMBER
       #Is not a number
       if [[ ! $GUEST_NUMBER =~ ^[0-9]+$ ]]
       then
          echo -e "\nThat is not an integer, guess again:"
       elif [[ $SECRET_GAME = $GUEST_NUMBER ]]
       then
          COUNT_PLAY=$(($COUNT_PLAY + 1))
          echo "You guessed it in $COUNT_PLAY tries. The secret number was $SECRET_GAME. Nice job!"
          INSERT_RESULT_GAME=$($PSQL "INSERT INTO games(user_id, best_game) VALUES($USER_ID, $COUNT_PLAY)")
          #End loop
          GUESSED=1
       elif [[ $SECRET_GAME -gt $GUEST_NUMBER ]]
       then
          COUNT_PLAY=$(($COUNT_PLAY + 1))
          echo -e "\nIt's lower than that, guess again:"
       else
          COUNT_PLAY=$(($COUNT_PLAY + 1))
          echo -e "\nIt's higher than that, guess again:"
       fi
   done
}
MAIN_MENU