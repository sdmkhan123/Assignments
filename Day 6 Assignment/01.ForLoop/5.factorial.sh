#! /bin/bash -x
read -p "enter a num: " n
fact=1
for (( num=1; num<=n; num++ ))
do
	fact=$(( fact * num ))
done
if [ $n -ge 0 ]
then
	echo "factorial of a num is: " $fact
else
	echo "Not Possible"
fi
