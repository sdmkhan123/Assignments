#! /bin/bash -x
declare -A BirthMonth
for (( i=0; i<50; i++ ))
do
	monthNum=$(( (RANDOM % 12) + 1 ))
	ValueCount=${BirthMonth[$monthNum]}
	ValueCount=$((ValueCount + 1))
	BirthMonth[$monthNum]=$ValueCount
done

for (( i=1; i<13; i++ ))
do
	echo "In the Month $i having ${BirthMonth[$i]} individual Birth"
done
#echo ${!BirthMonth[*]}
#echo ${BirthMonth[*]}