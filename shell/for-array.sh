#!/bin/bash

names[0]="VAR-1"
names[1]="VAR-2"

values[0]="Value of var 1."
values[1]="Value of var 2."

vars=(
    "aa"
    "bb"
)

echo Get indexes.
for i in "${!names[@]}"
do
    echo "Index: $i; Name: ${names[$i]}; Value: ${values[$i]}"
done

echo Get values only.
for i in "${values[@]}"
do
    echo "$i"
done

echo Get vars
for i in "${vars[@]}"
do
    echo "var: $i"
done
