#!/bin/bash



sendMail(){
title="$1"
recipient="john@gmail.com"
message="The diskusage at $dirPath is currently $diskUs"
echo "$message" | mail -s "$title" "$recipient"
echo $title
}


read -p "Enter the directory path to monitor: " dirPath
read -p "Enter threshold: " threshold

diskUsage(){
    echo "Disk usage"
    # Use awk to extract the used space in kilobytes from the df output
    diskUs=$(df -k "$dirPath" | awk 'NR==2 {print $3}')
}

if ! [[ $threshold =~ ^[0-9]+$ ]]; then
	echo "Threshold has to be a number"
	exit 1
fi

if ! [ -e "$dirPath" ]; then
	echo "This  path does not exist"
	echo 1
fi

if [[ $threshold < $diskUs ]]; then
	sendMail "Disk Usage Alert"
fi

while true; do
    diskUsage
    sleep 300  # 300 seconds = 5 minutes
done
