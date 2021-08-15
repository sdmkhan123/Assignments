#! /bin/bash
read -p day
read -p Month
if (( ($Month <= 6 && $day <= 20) && (($Month >= 3 && $day <= 20) && ($day<31)) ))
then
	echo $Month $date "True";
else

	echo "False";
fi
