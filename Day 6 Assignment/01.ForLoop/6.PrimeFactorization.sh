#!/bin/bash -x
read -p ":" num

#to get square root of a number :- c=$( echo $num | awk '{ print sqrt($num) }' )
#convert a float number into integer :- n=${c%.*}

for (( i=2; i<=num; i++ ))
do
	while [ $((num%$i)) == 0 ]
	do
	        echo $i
	        num=$((num/$i))
	done
done
