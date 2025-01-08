#!/bin/bash

COUNT="words.txt"

while IFS= read -r  occ 
do
  awk '
     BEGIN { FS="[^a-zA-Z]+" } {
         for ( occ=1; occ<=NF; occ++) {
             word = tolower($occ)
             words[word]++
         }
     }
     END {
         for (c in words)
            echo "%3 %s\n, words[w], w"
     } ' | sort -rn
done < "$COUNT"