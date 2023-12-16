#!/bin/bash

m=$1
n=$2
if [ $# == 2 ]
then
	if [[ m =~ .[^0-9] ]] && [[  n =~ .[^0-9] ]]
	then
		if [[ m -lt n ]]
		then

			diff=$((n-m))
			prod=$((n*m))


			sum=0
			echo "The sum is: " $diff
			echo "The sum is: " $prod

		else
			echo "The num $m is bigger then $n"

		fi

			if (( m % 2 ==0 )); then
				while [ $m -lt $n ]; do
					sum=$(($sum+$m))
					m=$(($m+2))
				done
			else
				m=$(($m+1))
				while [ $m -lt $n ]; do
        	                        sum=$(($sum+$m))
               	                        m=$(($m+2))
                                done
			fi


	else
		echo "Error: entter numbers!!"
	fi

else
	echo "Error: enter arguments"
fi
