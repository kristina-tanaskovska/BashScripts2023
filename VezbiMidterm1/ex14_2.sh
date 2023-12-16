#!/bin/bash

ls -lah | awk '{print $9}'

if [[ $extention =~ "\.txt$" ]]
then
	mv "$filename" "y"
