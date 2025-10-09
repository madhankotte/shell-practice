  #!/bin/bash

  USERID=$(id -u)
    if [ "$USERID" -ne 0 ]; then
       echo "Error::Please run this script with root or privilege."
       exit 1 # failure is other than 0
    fi

        dnf install mysql -y
    
    if [ $? -ne 0 ]; then
        echo " Error::Failed to install MySQL."
        exit 1
        else
        echo "MySQL installed successfully."
    fi