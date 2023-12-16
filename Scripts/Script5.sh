#!/bin/bash
echo "bla"
if [ $1 -gt 100 ]; then 
echo "bla2"
	echo "The num is larger"
echo "bla3"
	if (( $1 % 2 == 0 ));  then
echo"bla4"	
	echo "It's also even"
echo "bla5"
	fi
fi

