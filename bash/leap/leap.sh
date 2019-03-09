#!/usr/bin/env bash

errorText() {
	echo "Usage: leap.sh <year>" 
	exit 1
}

if  (( "$#" != 1 )); then
	errorText
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
	errorText
fi

if ((( $1 % 4 == 0 )) && (( $1 % 100 != 0 ))) || (( $1 % 400 ==0 )); then
   echo 'true'
else
   echo 'false'
fi
