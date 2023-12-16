#!/bin/bash

echo -n  "Enter folder name: " #asking user input
read folderName
if [[ "$folderName" == +" "+ ]] || [[ "$folderName" == +-+ ]]; then
	echo "Error you envered the file name wrong"
else
	if [[ -d "$folderName" ]]; then
		echo "Folder exists"
		rm  "FolderName"/*
	else
		mkdir newFolder
	fi

	echo "Provide a file name "
	read fileName
	mv $fileName /home/ubuntu/Desktop/newFolder
	chmod 600 $fileName #chmod u=rw g=0 o=0
	ls -lah > $fileName
fi 
