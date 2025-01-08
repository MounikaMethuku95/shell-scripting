#!/bin/bash

COUNT="words.txt"

#while IFS= read -r  occ 
#do
#  awk '
#     BEGIN { FS="[^a-zA-Z]+" } {
#         for ( occ=1; occ<=NF; occ++) {
#             word = tolower($occ)
#             words[word]++
#         }
#     }
#     END {
#         for (c in words)
#            echo "%3 %s\n, words[w], w"
#     } ' | sort -rn
#done < "$COUNT"

#tr '[:upper:]' '[:lower:]' < "$COUNT" | tr '\n' " " | tr -s " " | tr 'A-Z' 'a-z' | sort | uniq -c | sort -rn

sed -e 's/[^[:alpha:]]/ /g' linus.txt | tr '\n' " " |  tr -s " " | tr " " '\n'| tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | nl 


