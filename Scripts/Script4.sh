#!/bin/bash
if [ $# -ne 2 ]; then
	echo  "Usage:0$ <var><var>"
	exit 1
fi
varA=1
varB=2
sum=$((varA+varB))
echo "Zbirot na broevite e: " $sum
