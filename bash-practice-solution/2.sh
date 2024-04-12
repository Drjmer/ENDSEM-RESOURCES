#!/bin/bash

declare -A array
file="$1"
while read -r line; do
    for arg in $line;
    do
        if [ array[$arg] ]
        then
            array[$arg]=$((${array[$arg]}+1))
        else
            array[$arg]=1
        fi
    done
done < "$file"

for key in ${!array[*]}
do
    echo "$key: "${array[$key]}
done