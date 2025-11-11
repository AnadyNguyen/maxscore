#!/bin/bash
# maxscore.sh
#Andy Nguyen   
#CPSC298 

score=()

echo "Enter 5 scores:"
read -rp "Score 1: " num
score[0]=$num
max=${score[0]}

# Find max using bc
for (( i=1; i<5; i++ ))
do
    read -rp "Score $((i+1)): " num
    score[$i]=$num
    greater=$(echo "${score[$i]} > $max" | bc)
    if (( greater == 1 )); then
        max=${score[$i]}
    fi
done

echo ""
echo "The highest score is $max"
echo "The scores are:"
for (( i=0; i<5; i++ ))
do
    diff=$(echo "$max - ${score[$i]}" | bc)
    echo "${score[$i]} differs from max by $diff"
done
