#!/bin/bash

longword="strings.txt"

#for lw in $(<strings.txt)
#do
#    len=${#lw}
#    if [[ len -gt longword ]]
#    then 
#        longword=$len
#        longestword=$word
#    fi
#done
#echo " The longest word is  with length $word $longword"

#for lw in {i=1;i<=NF;i++}
#do 
#   if [[length(i)>longword]]
#   then
#       longword=length(i)
#       lw=$i
#   fi
#done
#echo "The longest word is $lw"

awk 'BEGIN{fc=0;fw=""} $2~/ {if ($1>fc){fc=$1;fw=$2}} END{print fw}' <strings.txt