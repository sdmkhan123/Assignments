#! /bin/bash -x

declare -a arr
for (( i=0; i<10; i++ ))
do
	num=$(( ( RANDOM % 900 )  + 100 ))
	arr[i]=$num
done
max1=${arr[0]}
max2=${arr[1]}
min1=${arr[0]}
min2=${arr[1]}
for (( i=1; i<10; i++ ))
do
	if [ ${arr[i]} -gt $max1 ]
	then
		max2=$max1
		max1=${arr[i]}
	elif [ ${arr[i]} -gt $max2 ]
	then
		max2=${arr[i]}
	fi
done

for (( i=1; i<10; i++ ))
do
        if [ ${arr[i]} -lt $min1 ]
        then
                min2=$min1
                min1=${arr[i]}
        elif [ ${arr[i]} -lt $min2 ]
        then
                min2=${arr[i]}
        fi
done
echo "second min ="$min2
echo "second max ="$max2
echo ${arr[*]}
