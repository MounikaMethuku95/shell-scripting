#!/bin/bash

longword=0
G="\e[32m"
for lw in $(<strings.txt)
do
    len=${#lw}
    if [[ len -gt longword ]]
    then 
        longword=$len
        longestword=$word
    fi
done
echo " The longest word is.. $G.. $word with length $len \n' $longestword $longword"