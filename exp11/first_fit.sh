#!/bin/bash

echo "Enter Block Sizes:"
read -a block

echo "Enter Process Sizes:"
read -a process

for p in "${process[@]}"
do
    allocated=0

    for i in "${!block[@]}"
    do
        if [ ${block[$i]} -ge $p ]
        then
            echo "Process $p -> Block $((i+1))"
            block[$i]=$((block[$i]-p))
            allocated=1
            break
        fi
    done

    if [ $allocated -eq 0 ]
    then
        echo "Process $p -> Not Allocated"
    fi
done
