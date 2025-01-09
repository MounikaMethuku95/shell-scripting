#!/bin/bash

originalword=$1
replacementword=$2

G="\e[32m"

file="/c/devops/daws-82s/repos/shell-scripting/assignments/words.txt"

updated_file=$(sed -i "s/$originalword/$replacementword/g" $file)

echo -e $G "Word replacement completed."

cat $file
