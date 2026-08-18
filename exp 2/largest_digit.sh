#!/bin/bash

echo "Enter a number:"
read n

largest=0

while [ $n -gt 0 ]
do
    digit=$((n%10))

    if [ $digit -gt $largest ]
    then
        largest=$digit
    fi

    n=$((n/10))
done

echo "Largest Digit = $largest"
