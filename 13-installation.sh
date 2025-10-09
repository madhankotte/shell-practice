#!/bin/bash

 USERID=$(id -u)
    if [ "$USERID" -ne 0 ]; then
       echo "Error::Please run this script with root or privelege."
       exit 1 # failure is other than 0
    fi
    VALIDATE() {  # Functions receivd input through args just shell script args
     if [ $? -ne 0 ]; then
        echo " Error:: installation mysql is failure"
        exit 1
    else
        echo "mysql installed successfully."
    fi
    }
        dnf install mysql -y

    VALIDATE $? "mysql"

        dnf install nginx -y

    VALIDATE $? "nginx"

        dnf install python3 -y

    VALIDATE $? "python3"