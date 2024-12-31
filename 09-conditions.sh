#!/bin/bash

NUMBER1=$1
NUMBER2=$2

if [ $NUMBER1 -gt $NUMBER2 ]
then
    echo "Given number is greater than $NUMBER2"
else
    echo "Given number is less than $NUMBER2"
fi