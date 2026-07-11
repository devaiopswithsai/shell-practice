#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+NUMBER2))

echo "sum is $SUM"

# in shell string also consider as integer only

###Array

Course = ("AWS" "AI" "DEVOPS") # index always starts from zero

echo "Coruses are: ${course[@]}"
echo "First course is : ${course[1]}"
echo "second course is : ${course[2]}"
echo "Third course is : ${course[3]}"