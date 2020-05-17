#!/usr/bin/env bash
# File: guessinggame.sh

echo "Can you guess how many files are there in current directory?"


function guessgame
{
    count=$(pwd | ls | wc -l)
    while true;
    do
        
        read  guessnum
        if [ $guessnum -lt $count ]
        then
            echo "The number $guessnum ,which you have entered is less then the number of files present"
        elif [ $guessnum -gt $count ]
        then
            echo "The number $guessnum ,which you have entered is greater then the number of files present"
        else
            echo "Congratulations the number $guessnum which you have guessed is the correct one"
        fi
    done
}
guessgame
