#!/bin/bash

# Write script to determine whether given file exist or not,
# file name is supplied as command line argument,
# also check for sufficient number of command line argument.

if [[ $# == 1 ]]
then
	if [ -f $1 ]
	then
		echo File exists
	else
		echo file doesn\'t exist
	fi
else
	echo "Error: give the name of the file"
fi
