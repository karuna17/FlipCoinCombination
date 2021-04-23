#!/bin/bash -x

declare -A headDict
declare -A tailDict
coin=$((RANDOM%2))
h=0
t=0
for ((i=0; i<=10; i++))
do
if [ $((RANDOM%2)) -eq 0 ]
then
  headDict["head"]="HEAD"
  h=$h+1
   Head=$(($h/10*100))
elif [ $((RANDOM%2)) -eq 1 ]
then
  tailDict["tail"]="TAIL"
  t=$t+1
   Tail=$(($t/10*100))
fi
done

#Head=$(($h/10*100))

#Tail=$(($t/10*100))

echo "Heads: " $Head "%"
echo "Tails: " $Tail "%"
