#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your number of files in the directory - JUST GUESS :)"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is less than number of files"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater than number of files"
        else
            echo "Congratulations, you guessed it right!"
        break;
        fi
    done
}
echo "Guess total number of files in this directory,"
guess
