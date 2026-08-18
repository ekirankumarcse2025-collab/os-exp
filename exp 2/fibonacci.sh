#!/bin/bash

echo "Enter number of terms:"
read n

a=0
b=1

echo "Fibonacci Series:"

count=0

while [ $count -lt $n ]
do
    echo -n "$a "
    fn=$((a+b))
    a=$b
    b=$fn
    count=$((count+1))
done

echo
