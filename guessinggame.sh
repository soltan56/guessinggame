#!/bin/bash

# Function to count files in the current directory
function count_files {
    echo $(ls -1 | wc -l)
}

# Main program logic
echo "Welcome to the Guessing Game!"
correct_count=$(count_files)

while true; do
    read -p "Guess the number of files in the current directory: " guess
    if [[ $guess -eq $correct_count ]]; then
        echo "Congratulations! You guessed it correctly."
        break
    elif [[ $guess -lt $correct_count ]]; then
        echo "Too low. Try again."
    else
        echo "Too high. Try again."
    fi
done
