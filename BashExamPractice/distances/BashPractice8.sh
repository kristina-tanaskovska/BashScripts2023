#!/bin/bash

read -p "Enter starting location: " start
read -p "Enter destination: " end
read -p "Enter the cost per km: " cost

if [[ ! "$start" =~ ^[a-zA-Z]+$ || ! "$end" =~ ^[a-zA-Z]+$ ]]; then
    echo "The locations must be written with characters only."
    exit 1
fi

if [[ ! "$cost" =~ ^[0-9]+$ ]]; then
    echo "The cost must be numbers only."
    exit 1
fi

if [[ ! -f "distances/$start-$end.txt" ]]; then
    echo "This route doesn't exist."
    exit 1
fi

distance=$(cat "distances/$start-$end.txt")
price=$(($distance * $cost))

echo $price
