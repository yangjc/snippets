#!/bin/bash

text="a-var=some values"

if [[ "$text" == *"="* ]]; then
    echo "Has '='."
else
    echo "No '='."
fi

echo "name: ${text%%=*}"
echo "value: ${text#*=}"

# remove leading whitespace from a string:
echo ${text##+([[:space:]])}
# remove trailing whitespace from a string:
echo ${text%%+([[:space:]])}
# remove all whitespace from a string:
echo ${text//[[:space:]]}
