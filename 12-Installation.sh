  #!/bin/bash

  USERID=$(id -u)
    if [ "$USERID" -ne 0 ]; then
    echo "Error::Please run this script with root or privilege."
    fi

    dnf install mysql -y
    
    if [ $? -ne 0 ]; then
        echo " Error::Failed to install MySQL."
        else
        echo "MySQL installed successfully."
        fi