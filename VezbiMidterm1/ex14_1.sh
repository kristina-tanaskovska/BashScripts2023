#!/bin/bash

read $string


len_string=${#string}
palindrome=0

el_zero(){
for ((i=0; i<len_string; i++ ))
do
	palindrome[$i]=0
done
}

for ((i=0;i<len_string; i++ ))
do
	el_zero
	palindrome[$len_string]=$string[$i]
#	palindrome[$i]=${string:$i:1}
	len_string=$((len_string-1))
done

if [ string == palindrome ]; then
	echo ITS a palindrome
else
	echo its not
fi
echo $palindrome
