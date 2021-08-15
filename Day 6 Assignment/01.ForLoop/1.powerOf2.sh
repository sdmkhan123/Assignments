#! /bin/bash -x
Power=1
read -p "Enter an argument:" n
for (( num=1; num<=n; num++ ))
do
	Power=$(( Power * 2 ))
	echo $Power
done
