#! /bin/bash -x
read -p "Enter term num: " n
First_Term=0
for (( num=1; num<=n; num++ ))
do
	First_Term=$(( First_Term + 1 ))
done
echo "1/$First_Term"
