#!/bin/bash

input=$0
threefactorial() {
product=1
for (( i = $1; $i -gt 0; i=$(($i - 1)) )); do
	if [[ $i%3 == 0 ]]; then
		product=$(($product * $i))
	fi
echo $product
done
}
threefactorial "input"
