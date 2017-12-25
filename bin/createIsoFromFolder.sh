#!/bin/bash

if [ -d "$1" ]
then
	FILENAME=`basename "$1"`
	if [ ${#FILENAME} -gt 30 ]
	then
		FILENAME=${FILENAME:0:30}
	fi
	mkisofs -J -allow-leading-dots -R -V "$FILENAME" -iso-level 4 -o "./$FILENAME.iso" "$1"
fi

