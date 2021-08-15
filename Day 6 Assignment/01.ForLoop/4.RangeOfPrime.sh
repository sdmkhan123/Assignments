#! /bin/bash -x
read -p "Enter a starting range:" m
read -p "Enter a ending range:" n
for (( i=m; i<=n; i++ ))
do
	flag=0
	for (( num=2; num<i/2; num++ ))
	do
	        if [ $((i % num )) -eq 0 ]
	        then
	                flag=1
	        fi
	done
	if [ $flag -eq 0 ]
	then
	        echo "$i"
	fi
done
