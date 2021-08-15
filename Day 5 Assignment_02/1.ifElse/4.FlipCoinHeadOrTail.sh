#! /bin/bash -x

Flip_Coin=$((RANDOM%2))
if [ $Flip_Coin -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
