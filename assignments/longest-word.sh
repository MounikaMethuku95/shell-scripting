#!/bin/bash

longword=0
G="\e[32m"
for lw in $(<strings.txt)
do
    len=${#lw}
    if [ [ len -gr longword ]]
    then 
        longword=$len
        longestword=$word
    fi
done
echo " $G The longest word is %s with length %d.\n' $longestword $longword "