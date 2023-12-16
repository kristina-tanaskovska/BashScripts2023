#!/bin/bash

a=$1
b=$2
c=$3
regex="-h"
if [[ "$*" =~ $regex ]]; then
	echo hello raboti
else
	echo nerabotii  on ne
fi
