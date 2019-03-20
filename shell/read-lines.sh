#!/bin/bash

file=$0

while IFS= read -r line || [ -n "$line" ]
do
    echo "$line"     
done < "$file"
