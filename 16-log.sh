#!/bin/bash

USERID=$(id -u)
R='\e[31m' # Red
G='\e[32m' # Green
B='\e[34m' # Blue
Y='\e[33m' # Yellow
N='\e[0m'  # No Color
LOGS_FOLDER=/var/log/shell-scripts

    if [ "$USERID" -ne 0 ]; then
       echo "Error::Please run this script with root or privelege."
       exit 1 # failure is other than 0
    fi


    mkdir -p LOGS_FOLDER