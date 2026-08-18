#!/bin/bash

echo "Enter Register Number:"
read reg

echo "Enter Name:"
read name

echo "$reg $name" > student.txt

echo "Record Details"
cat student.txt
