#!/bin/bash

# TIMESTAMP=$(date)
# echo "time is $TIMESTAMP"

START_TIME=(date +%s)

sleep 20

END_TIME=(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Total time taken to run the script is $TOTAL_TIME"