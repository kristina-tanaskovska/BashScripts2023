#!/bin/bash

allEvents=$(cat log_2023-01-19.txt | cut -d '|' -f 1 | cut -d ' ' -f 2 | sort)
echo $allEvents

temp=0

for event in $allEvents; do
	if [ $event == $temp ]; then
		temp=$event
	else
		echo $event
		temp=$event
	fi
done
