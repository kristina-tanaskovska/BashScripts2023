#!/bin/bash

row=5
for ((i = 0; i <= row; i++)); do
	for ((j = 0; j <= row; j++)); do
		echo -n "$i"
	done
	echo
done
