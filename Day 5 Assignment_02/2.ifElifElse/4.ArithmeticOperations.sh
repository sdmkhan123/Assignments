#! /bin/bash -x
read a
read b
read c
max=$( echo $a $b $c | awk '{print $1+$2*$3}')
min=$( echo $a $b $c | awk '{print $1+$2*$3}')
num2=$( echo $c $a $b | awk '{print $1+$2/$3}')
num3=$( echo $a $b $c | awk '{print $1%$2+$3}')
num4=$( echo $a $b $c | awk '{print $1*$2+$3}')
if [ $num2 -gt $max ]
then
	max=$num2
fi
if [ $num3 -gt $max ]
then
	max=$num3
fi
if [ $num4 -gt $max ]
then
	max=$num4
fi
echo max
