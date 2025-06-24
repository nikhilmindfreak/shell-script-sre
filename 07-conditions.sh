#!/bin/bash

# check if it is greater than 10 or not

NUMBER=$1

if [ $NUMBER -gt 10 ]
then
    echo "Given number $NUMBER is greater than 10"
else
    echo "Given number $NUMBER is less than 10" 
fi

#-gt, -lt, -eq, -ge, -le