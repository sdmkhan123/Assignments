#! /bin/bash
Power=1
read -p "Enter an argument:" n
num=1
MAX_value=255
while [ $num -le $n ] && [ $Power -le $MAX_value ]
do
	Power=$(( Power * 2 ))
	echo $Power
	((num++))
done
