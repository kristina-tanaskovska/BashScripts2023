#!/bin/bash


#checking if third argument is a file
if [ -f $3  ]; then 
        for [[ i =0; i<$2; i++ ]]
        do
                 cp $3 $i
        #copyinng the file to each given direktory
        done
