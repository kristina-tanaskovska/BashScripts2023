#!/bin/bash
if(( $# > 1 ))
then
	read var1
	read var2
	var3=$(($var1 + $var2))
	echo $var3

else
echo provide two num
	echo usage:
	echo $1 $2
fi
