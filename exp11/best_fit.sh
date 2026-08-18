#!/bin/bash

echo "Enter Block Sizes:"
read -a block

echo "Enter Process Sizes:"
read -a process

for p in "${process[@]}"
do
    best=-1

    for i in "${!block[@]}"
    do
        if [ ${block[$i]} -ge $p ]
        then
            if [ $best -eq -1 ] || [ ${block[$i]} -lt ${block[$best]} ]
            then
                best=$i
            fi
        fi
    done

    if [ $best -ne -1 ]
    then
        echo "Process $p -> Block $((best+1))"
        block[$best]=$((block[$best]-p))
    else
        echo "Process $p -> Not Allocated"
    fi
done
