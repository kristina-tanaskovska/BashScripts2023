#!/bin/bash

inp1=$0  # Use $1 to capture the first command line argument
inp2=$1
inp3=$2

threefactorial() {
    product=1
    for (( i = $1; i > 0; i-- )); do
        if (( $i % 3 == 0 )); then
            product=$(($product * $i))
        fi
    done
    echo $product " "
}

threefactorial "$inp1"  # Pass the input variable as an argument to the function

forThreeNum(){
	threefactorial "$inp1"
	threefactorial "$inp2"
	threefactorial "$inp3"
}
forThreeNum "$inp1" "$inp2" "$inp3"
