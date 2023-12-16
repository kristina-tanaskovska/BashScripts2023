#!/bin/bash

echo -n "Enter folder name: " 
read folderName

if [[ "$folderName" == " " ]] || [[ "$folderName" == "-" ]]; then
    echo "Error: You entered the folder name wrong."
else
    if [[ -d "$folderName" ]]; then
        echo "Folder exists."
        rm "$folderName"/*
    else
        mkdir "$folderName"
    fi

    echo "Provide a file name: "
    read fileName

    if [[ -f "$fileName" ]]; then
        mv "$fileName" /home/ubuntu/Desktop/newFolder
        chmod 600 "/home/ubuntu/Desktop/newFolder/$fileName"
        ls -lah > "$fileName"
    else
        echo "Error: File '$fileName' does not exist."
    fi
fi

