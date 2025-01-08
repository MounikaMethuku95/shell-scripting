#!/bin/bash

FILE="strings.txt"

while IFS= read -r Pal 
do
  if [[ "$Pal" == "$(rev <<< "$Pal")" ]]
  then
      echo "The palindrome words in the given file are: $Pal"
  else
      if [ $? -eq 1 ]
      then
      echo "No palindrome words found"
      fi
  fi
done < "$FILE"