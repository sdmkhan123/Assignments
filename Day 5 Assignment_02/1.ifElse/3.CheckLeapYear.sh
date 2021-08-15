#! /bin/bash
read -p year
a=$(( year % 4 ))
b=$(( year % 100 ))
c=$(( year % 400 ))
if [ $a -eq 0 ] && [ $b -ne 0 ] || [ $c -eq 0 ]
then
	echo "This is Leap Year"
else
	echo "Not a Leap Year"
fi
