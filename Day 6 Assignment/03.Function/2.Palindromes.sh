#! /bin/bash -x
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

read num1
read num2
result1=$(Palindrome $num1)
result2=$(Palindrome $num2)
if [ $result1 -eq 1 ] && [ $result2 -eq 1 ]
then
	echo "Both Numbers are Palindromes"
else
	echo "Not Valid"
fi
