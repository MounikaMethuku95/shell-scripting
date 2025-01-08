#!/bin/bash

FILE="strings.txt"

while IFS= read -r Pal 
do
  if [[ "$Pal" == "$(rev <<< "$Pal")" ]]
  then
      echo "The palindrome words in the given file are: $Pal"
  else
      echo "No palindrome words found"
fi
