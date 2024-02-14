#!/bin/bash

fillingArray() {
    for ((i = 0; i < 100; i++)); do
        array[$i]='A'
    done
}

printArray() {
    count=0
    for ((i = 0; i < 10; i++)); do
        for ((j = 0; j < 10; j++)); do
            index=$((i * 10 + j))
            echo -n "${array[$index]}"
        done
        echo # Prints new line after each row
    done
}

# Call the function to fill the array
fillingArray

# Call the function to print the array as a 10x10 grid
printArray

reservingSeats(){
seatNum=$(($seat - 1))
	array[$seatNum]='_'
((numOfReserved++))
}

price(){
price=$((numOfReserved * 2))
echo "The price is $price"
}

array=()
numOfReserved=0
count=0
while [ $count == 0 ]; do
read -p "Please enter the seat number you wish to reserve" seat
reservingSeats
printArray
echo "Your seat has been succesfully reserved"

echo "Would you like to reserve another seat? "
list=("Yes" "No")
select choice in "${list[@]}"; do
	case $choice in
	"Yes")
		printArray
		#function calling the seat selection
		;;
	"No")
		price
		echo "Thank you for using our services"
		count=1
		;;
	*)
		echo "Please select yes or no"
		;;
	esac

	break
done #from select
done #from while loop
