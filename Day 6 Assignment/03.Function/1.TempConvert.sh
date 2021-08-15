#! /bin/bash -x
function degF_to_degC(){
        local a=$1
        local b=32
        local result=$(echo "scale=2;(5/9)*($a-32)"|bc)
        echo $result
}
function degC_to_degF(){
        local a=$1
        local result=$(echo "scale=2;((9/5) * $a) + 32" |bc)
        echo $result
}
read -p "tepm in degC:" degC
read -p "tepm in degF:" degF
tempDegC=$(degF_to_degC $degF)
tempDegF=$(degC_to_degF $degC)
echo "Degree C to F temp is :" $tempDegF
echo "Degree F to C tepm is :" $tempDegC
