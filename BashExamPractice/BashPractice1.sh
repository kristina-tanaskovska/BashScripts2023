#!/bin/bash

m=$1
n=$2

# Check if the number of command-line arguments is not equal to 2
if [ "$#" -ne 2 ]; then
    echo "USAGE: $0 <val1> <val2>"
    exit 1
fi

# Check if both arguments are not numbers
if [[ ! "$m" =~ ^[0-9]+$ || ! "$n" =~ ^[0-9]+$ ]]; then
    echo "$m or $n is not a number"
    exit 1
fi



echo "It works"

diff() {
sum=$(( $1 + $2 ))
echo "$sum"
}

sumEven() {
for ((i = $1; i <= $2; i++ )); do
	suEven = $(($1 = $2))
	echo "$suEven"
done

}
sumEven "m" "n"
diff "m" "n"

