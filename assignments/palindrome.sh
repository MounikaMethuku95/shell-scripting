#!/bin/bash

FILE=$(<"$1")

if [[ "$FILE" == "$(rev <<< "$FILE")" ]]
then
    echo "The palindrome words in the given file are: $FILE"
else
    echo "No palindrome words found"
fi