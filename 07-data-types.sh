#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+NUMBER2))

echo "sum is $SUM"

# in shell string also consider as integer only

###Array

Course=("AWS" "AI" "DEVOPS") # index always starts from zero

echo "Coruses are: ${Course[@]}"
echo "First course is : ${Course[0]}"
echo "second course is : ${Course[1]}"
echo "Third course is : ${Course[2]}"