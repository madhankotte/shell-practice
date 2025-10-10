#!/bin/bash

USERID=$(id -u)
R='\e[31m' # Red
G='\e[32m' # Green
B='\e[34m' # Blue
Y='\e[33m' # Yellow
N='\e[0m'  # No Color
 
LOGS_FOLDER=/var/log/shell-scripts
SCRIPT_NAME=$(echo $0 | cut  -d'.' -f1).log
LOGS_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "starting the script execution at: $(date)"

    if [ "$USERID" -ne 0 ]; then
       echo "Error::Please run this script with root or privelege."
       exit 1 # failure is other than 0
    fi
VALIDATE() {  # Functions receivd input through args just shell script args
     if [ $? -ne 0 ]; then
        echo -e " installing $2 ... $R is failure $N"
        exit 1
    else
        echo -e "installing $2.... $G is successful $N"
    fi
    }

      # $@

    for package in "$@"
    do
        echo "package is $package"
    done