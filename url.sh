#!/bin/bash

URL1="http://elroy.site"
echo "enter anazon URL:"
read URL2

while true; do
	CONTENT1=$(curl -s "$URL1")
	CONTENT1=$(curl -s "$URL2")
	
	if [ "$CONTENT1" = "$CONTENT2" ]; then
		osascript -e 'display dialog "same URL content!!!" with title "URL check"'
		echo "same content, exit"
		break
	else
		echo "content doesn't match, trying again"
	fi
	
	sleep 5
done
