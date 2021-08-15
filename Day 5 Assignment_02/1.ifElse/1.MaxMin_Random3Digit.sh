#! /bin/bash
num=5
min=1000
max=99
for (( i=0; i<5; i++ ))
do
     num=$(( ( RANDOM % 900 )  + 100 ))
     if [[ $num -gt $max ]]
     then
	max="$num"
     fi
     
     if [[ $num -lt $min ]]
     then
	min="$num"
     fi
done
echo $min $max
