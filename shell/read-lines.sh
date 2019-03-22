#!/bin/bash

file=$0
while IFS= read -r line || [ -n "$line" ]
do
    echo "$line"     
done < "$file"

var='a=0
b=1
c=2'
while read -r line
do
    IFS='=' read -ra items <<< "$line"
    echo "key: ${items[0]}, value: ${items[1]}"
done <<< "$var"
