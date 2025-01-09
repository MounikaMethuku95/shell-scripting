#!/bin/bash

#select a directory to rename the text files in
dir='/c/devops/daws-82s/repos/shell-scripting/assignments/bulkfiles'

R="\e[31m"
B="\e[34m"
N="\e[0m"

timestamp=$(date +%Y%m%d)

for file in "$dir"/*.txt; #for every file in the entore directory selected
do
  if [ -f "$file" ];
  then
      filename=$(basename "$file") #to store the filename in the var given
      echo -e $B "Files are there in the given directory: $file" $N #print if text files are present in the selected dir
      mv "$file" "$dir/${timestamp}_$filename" #replace the filename with timestamp
  else
      echo "no text files are found"
      exit 1
  fi
done

echo -e $R "renamed all text files in the selected directory" 

