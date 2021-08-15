#! /bin/bash -x
MAX_COUNT=11
HeadCount=0
TailCount=0
HEAD=1
while [ $HeadCount -lt $MAX_COUNT -a $TailCount -lt $MAX_COUNT ]
do
	flipcoin=$((RANDOM%2))
	if [ $flipcoin -eq $HEAD ]
	then
	        ((HeadCount++))
	else
	        ((TailCount++))
	fi
done
echo "Number of Head count :" $HeadCount
echo Number of Tail count :" $TailCount
