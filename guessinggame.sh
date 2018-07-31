#!/usr/bin/env bash
function letsGuess {
echo "Guess how many files are in the current directory?"
read guess
flag=0
numberOfFiles=$(ls | wc -l)
}
letsGuess
while [[ $flag -eq 0 ]]
do
if [[ -z $guess ]] || [[ $guess =~ ^[a-zA-Z]+$ ]]
then
if [[ $guess -eq "q" ]]
then
let flag=1
else
echo "Wrong input! Enter a digit number."
letsGuess
fi
elif [[ $guess -gt $numberOfFiles ]]
then
echo "Your guess is too high, let's guess again!"
letsGuess
elif [[ $guess -lt $numberOfFiles ]]
then
echo "Your guess is too low, let's guess again!"
letsGuess
else
if [[ $numberOfFiles -eq 1 ]]
then
echo "Congrats! Your guess is right, there is $guess file in this directory."
else
echo "Congrats! Your guess is right, there are $guess files in this directory."
fi
let flag=1
fi
done

