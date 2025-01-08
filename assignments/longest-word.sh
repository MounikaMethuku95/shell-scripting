#!/bin/bash

longword=0

for lw in $(<strings.txt)
do
    len=${#lw}
    if [[ len -gt longword ]]
    then 
        longword=$len
        longestword=$word
    fi
done
echo " The longest word is..$lw with length' $longestword $longword"