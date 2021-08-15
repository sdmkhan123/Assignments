#! ?bin/bash -x
win=1
winAmt=1
winCount=0
loseCount=0
loseAmt=1
stake=100
while [ $stake -ne 200 -a $stake -ne 0 ]
do
	betCheck=$((RANDOM%2))
	        if [ $betCheck -eq $win ]
	        then
	                stake=$(( $stake + $winAmt ))
	                winCount=$(( $winCount + 1))
	        else
	                stake=$(( $stake - $loseAmt))
	                loseCount=$(( $loseCount + 1 ))
	        fi
done
echo "The number of times gambler won = $winCount"
echo "The total number of bets made = $((winCount + loseCount))"
