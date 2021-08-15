# a). 1ft = 12 in then 42 in = ? ft
#! /bin/bash
NUM1=12
NUM2=42
result=$(echo "scale=1; $NUM2/$NUM1" | bc -l)
echo $result

# b). Rectangular Plot of 60 feet x 40 feet in meters
#! /bin/bash -x
OneFeet_into_meter=0.3047
NUM1=60
NUM2=40
Feet_60_into_Meter=$(echo "$OneFeet_into_meter * $NUM1" | bc -l)
Feet_40_into_Meter=$(echo "$OneFeet_into_meter * $NUM2" | bc -l)
echo "60 feet x 40 feet in meters=$Feet_60_into_Meter x $Feet_40_into_Meter"

# c). Calculate area of 25 such plots in acres
#! /bin/bash
OneFeet_into_meter=0.3047
NUM1=60
NUM2=40
Feet_60_into_Meter=$(echo "$OneFeet_into_meter * $NUM1" | bc -l)
Feet_40_into_Meter=$(echo "$OneFeet_into_meter * $NUM2" | bc -l)
Area_In_Square_Meter=$(echo "25 * $Feet_60_into_Meter * $Feet_40_into_Meter" | bc -l)
echo "Area of a plot:" $Area_In_Square_Meter
