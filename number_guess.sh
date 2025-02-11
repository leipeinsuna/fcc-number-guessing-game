#!/bin/bash

# variable to query database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt player for username
echo -e "\nEnter your username:"
read USERNAME

# Check if the username exists in the database
USERNAME_RESULT=$($PSQL "SELECT username FROM players WHERE username='$USERNAME'")

if [[ -z $USERNAME_RESULT ]]  # If username is not found
then
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
    
    # Add the new user to the players table
    INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO players(username) VALUES('$USERNAME')")
else  # If username exists
    # Get the number of games played and the best game
    GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games LEFT JOIN players USING(user_id) WHERE username='$USERNAME'")
    
    # Get the best game (minimum guesses)
    BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games LEFT JOIN players USING(user_id) WHERE username='$USERNAME'")
    
    # If BEST_GAME is NULL, set it to "N/A"
    if [[ -z $BEST_GAME ]]
    then
        BEST_GAME="N/A"
    fi
    
    # Welcome back message
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate secret number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

GUESS_COUNT=1  # Start count from 1 because the first guess is the first try

echo "Guess the secret number between 1 and 1000:"
read USER_GUESS 

# Loop until the correct guess is made
until [[ $USER_GUESS -eq $SECRET_NUMBER ]]
do
    # Check if the guess is a valid integer
    if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
    then
        echo -e "\nThat is not an integer, guess again:"
    elif [[ $USER_GUESS -lt $SECRET_NUMBER ]]
    then
        echo "It's higher than that, guess again:"
    else
        echo "It's lower than that, guess again:"
    fi
    read USER_GUESS
    ((GUESS_COUNT++))  # Increment guess count after every attempt
done

# Retrieve the user_id for the player
USER_ID_RESULT=$($PSQL "SELECT user_id FROM players WHERE username='$USERNAME'")

# Insert the game result into the games table
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, secret_number, number_of_guesses) VALUES ($USER_ID_RESULT, $SECRET_NUMBER, $GUESS_COUNT)")

# Output the final result
echo -e "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"

exit
