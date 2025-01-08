#!/bin/bash

longword=0

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

for lw in '[i=1;i<=NF;i++]'
do 
   if [[length(i)>longword]]
   then
       longword=length(i)
       lw=$i
   fi
done
echo "The longest word is $lw"
