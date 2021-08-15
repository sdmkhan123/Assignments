#! /bin/bash -x

function primeFucn(){
local n=$1
local flag=0
for (( num=2; num<n/2; num++ ))
do
	if [ $((n % num )) -eq 0 ]
	then
		flag=1
	fi
done
echo $flag
}

function Palindrome
{
	local n=$1
	local temp=$1
	local flag=0
	local reverse=0

	while [ $n -gt 0 ]
	do
	        a=$(($n % 10))
	        n=$((n / 10))
	        reverse=$((reverse * 10 + a))
	done

	if [ $temp -eq $reverse ]
	then
	        flag=1
	        echo $flag
	else
	        flag=0
	        echo $flag
	fi
}
read num
result1=$(primeFucn $num)
result2=$(Palindrome $num)
if [ $result1 -eq 0 ] && [ $result2 -eq 1 ]
then
	echo "True"
else
	echo "False"
fi
