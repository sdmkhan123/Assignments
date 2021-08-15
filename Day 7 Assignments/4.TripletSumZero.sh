#!/bin/bash -x
declare -a arr
arr=("-1" "-3" "5" "6" "2" "4" "-8")
n=${#arr[*]}
for (( i=0; i<n; i++ ))
do
	for (( j=$i+1; j<n; j++ ))
	do
		for (( k=$j+1; k<n; k++ ))
		do
			sum=$(( ${arr[i]} + ${arr[j]} + ${arr[k]} ))
			if [ $sum -eq 0 ]
			then
				echo "three integers are: " ${arr[i]} ${arr[j]} ${arr[k]}
				exit 0
			fi
		done
	done
done
