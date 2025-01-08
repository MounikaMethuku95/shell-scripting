#!/bin/bash

FILE="strings.txt"

while IFS= read -r Pal 
do
  if [[ "$Pal" == "$(rev <<< "$Pal")" ]]
  then
      echo "The palindrome words in the given file are: $Pal"
  else
      if [ $? -ne 0 ]
      then
      echo "No palindrome words found $Pal"
      fi
  fi
done < "$FILE"