#!/bin/bash -x
declare -a arr
num=11
index=0
for (( i=11; i<100; i=$(( i + num )) ))
do
	#n=$(( $i / $num ))
	#if [ $num -eq 0 ]
	#then
	arr[((index++))]=$i
	#fi
done
echo "twice repeated digit numbers are: "${arr[*]}
