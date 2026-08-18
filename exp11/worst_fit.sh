#!/bin/bash

echo "Enter Block Sizes:"
read -a block

echo "Enter Process Sizes:"
read -a process

for p in "${process[@]}"
do
    worst=-1

    for i in "${!block[@]}"
    do
        if [ ${block[$i]} -ge $p ]
        then
            if [ $worst -eq -1 ] || [ ${block[$i]} -gt ${block[$worst]} ]
            then
                worst=$i
            fi
        fi
    done

    if [ $worst -ne -1 ]
    then
        echo "Process $p -> Block $((worst+1))"
        block[$worst]=$((block[$worst]-p))
    else
        echo "Process $p -> Not Allocated"
    fi
done
