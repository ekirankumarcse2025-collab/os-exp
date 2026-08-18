#!/bin/bash

echo "Enter three numbers:"
read a b c

if [ $a -ge $b ] && [ $a -ge $c ]
then
    echo "Greatest Number = $a"
elif [ $b -ge $a ] && [ $b -ge $c ]
then
    echo "Greatest Number = $b"
else
    echo "Greatest Number = $c"
fi
