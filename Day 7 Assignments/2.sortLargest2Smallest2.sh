#! /bin/bash  -x
declare -a arr
for (( i=0; i<10; i++ ))
do
	num=$(( ( RANDOM % 900 )  + 100 ))
	arr[i]=$num
done
for ((i = 0; i<10; i++))
do
	for((j = 0; j<10-i-1; j++))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}  
			arr[$((j+1))]=$temp
		fi
	done
done
min=${arr[1]}
max=${arr[8]}
echo "second min = " $min
echo "second min = " $max
