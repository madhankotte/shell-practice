  #!/bin/bash

  USERID=$(id -u)
    if [ "$USERID" -ne 0 ]; then
       echo "Error::Please run this script with root or privelege."
       exit 1 # failure is other than 0
    fi

        dnf install mysql -y
    
    if [ $? -ne 0 ]; then
        echo " Error:: installation MySQL is failure"
        exit 1
    else
        echo "MySQL installed successfully."
    fi