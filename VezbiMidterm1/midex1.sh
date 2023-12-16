#!/bin/bash

m=$1
n=$2
if [ $# -ne 2 ]; then
	echo Error enter 2 argumente
exit 1
fi

if [[ m =~ .[^0-9] ]] && [[ n =~ .[^0-9] ]]; then
	echo Error enter numbers
exit 1
fi

if [ $m -gt $n ]; then

	echo "error first numb greater"
exit 1
fi

sump=0

if [ $m % 2 == 0 ]; then
	while [ $m -lt $n ]
	do
		sump=$(($sump+$m))
		m=$(($m+2))
	done
else
m=$(($m+1))
	while [ $m -lt $n ]
        do
                sump=$(($sump+$m))
                m=$(($m+2))
        done
fi

diff=$((n-m))
prod=$((n*m))


	echo "the diff between" $n " and "  $m " = " $diff
	echo "the product is "$n "x" $m "=" $prod

 
