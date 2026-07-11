#!/bin/bash

NUM=$1
# -gt greater than
# lt - less than
# eq - equal
# ne - not equal
# ge - greater than or equal
# le - less than or equal

if [ $NUM -gt 10 ]; then
    echo "given number $NUM is greater than 10"
elif [ $NUM -eq 10 ]; then
     echo "given number $NUM is equal to  10"
else
    echo "given number $NUM is less than 10"
fi