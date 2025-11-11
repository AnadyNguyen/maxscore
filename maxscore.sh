#!/bin/bash
# maxscore.sh
#Andy Nguyen   
#CPSC298 


score=()
max=0

echo "Enter 5 scores:"

# Read first score and set as max (just like score[0] = keyboard.nextDouble(); max = score[0];)
read -rp "Score 1: " num
score[0]=$num
max=${score[0]}

# Read remaining 4 scores and find max
for (( index=1; index<5; index++ ))
do
    read -rp "Score $((index+1)): " num
    score[$index]=$num
    if (( ${score[$index]} > max )); then
        max=${score[$index]}
    fi
done

echo ""
echo "The highest score is $max"
echo "The scores are:"

# Print all scores and their difference from max
for (( index=0; index<5; index++ ))
do
    diff=$(( max - ${score[$index]} ))
    echo "${score[$index]} differs from max by $diff"
done
