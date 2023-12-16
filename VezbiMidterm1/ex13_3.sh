#!/bin/bash

filename=$1
key1=$2
key2=$3
key3=$4

if [ -r $1 ]; then
	grep -Ecn -e $2 -e $3 -e $4 $1
else
	echo " The file cannot be read "
fi


