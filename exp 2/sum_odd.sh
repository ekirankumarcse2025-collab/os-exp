#!/bin/bash

echo "Enter N:"
read n

sum=0
i=1

while [ $i -le $n ]
do
    sum=$((sum+i))
    i=$((i+2))
done

echo "Sum of Odd Numbers = $sum"
