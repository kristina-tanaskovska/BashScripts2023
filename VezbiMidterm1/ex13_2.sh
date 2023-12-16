#!/bin/bash

path=$1
if [[ -f $path ]]; then
	 ls -lah | awk '{print $1, $5}'
	echo its a file
fi
if [[ -d $path ]]; then
	cd $path
	echo its a d
fi
