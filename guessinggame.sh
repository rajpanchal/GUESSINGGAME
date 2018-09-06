#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your number of files in the directory - JUST GUESS :)" #ENTER THE GUESS
        read  number
        if [ $number -lt $true_ans ]  #CHECKING IF LESS
        then
            echo "Your guess is less than number of files" #ACKNOWLEDGING IF LESS
        elif [ $number -gt $true_ans ] #CHECKING IF GREATER
        then
            echo "Your guess is greater than number of files" #ACKNOWLEDGING IF GREATER
        else
            echo "Congratulations, you guessed it right!" #CONGRATS FOR PASSING
        break;
        fi
    done
}
echo "Guess total number of files in this directory," #INITIAL OUTPUT FOR GUSEEING GAME
guess
