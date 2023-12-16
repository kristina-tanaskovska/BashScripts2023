#!/bin/bash

# Write a bash script that will add two numbers,
#which are supplied as command line argument,
# and if this two numbers are not given show error and its usage.
if [[ $# == 2 ]]
then
	num1=$1
	num2=$2
	sum=$((num1+num2))
	echo $sum
else
	echo "Error: enter two numbers"
fi
