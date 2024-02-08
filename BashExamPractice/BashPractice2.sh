#!/bin/bash

count=1
while (( count == 1 )); do
list=("Login" "Exit" "Do a calculation")
select choice in "${list[@]}"; do
	case $choice in
		"Login")
			read -p "Username: " var1
			read -sp "Paword: " var2
			echo #new line after pass input
			;;
		"Exit")
			count=$((count + 1))
			;;
		"Do a calculation")
			echo "Calculation done"
			;;
		*)
			echo "Invalid input"
			;;
	esac
	break
done
done
