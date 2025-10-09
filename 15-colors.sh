#!/bin/bash

 USERID=$(id -u)
    if [ "$USERID" -ne 0 ]; then
       echo "Error::Please run this script with root or privelege."
       exit 1 # failure is other than 0
    fi
    VALIDATE() {  # Functions receivd input through args just shell script args
     if [ $? -ne 0 ]; then
        echo -e " installing $2 ... $R is failure $N"
        exit 1
    else
        echo -e "installing $2.... $Y  is successful $N"
    fi
    }
      dnf list installed mysql
      # install if it is not found
        if [ $? -ne 0 ]; then
      dnf install mysql -y

    VALIDATE $? "mysql"
        else
         echo "mysql is already exist ... $Y skipping $N"
        fi

        dnf list installed nginx
        if [ $? -ne 0 ]; then
    VALIDATE $? "nginx"
        else
         echo "nginx is already exist ... $Y skipping $N"
        fi

        dnf list installed python3
    if [ $? -ne 0 ]; then

    VALIDATE $? "python3"
        else
         echo "python3 is already exist ... $Y skipping $N"
        fi