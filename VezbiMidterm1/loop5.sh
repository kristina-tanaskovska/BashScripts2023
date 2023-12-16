#!/bin/bash
row=8
for((i=1; i<=row; i++));do
	for((j=1; j<=i; j++)); do
		echo -n "$i"

	done
	echo -n
	echo
done
