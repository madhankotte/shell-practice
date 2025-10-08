#!/bin/bash

echo "please enter a number: "
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo " Given number $NUMBER is even"
elif [ $NUMBER -lt 10 ]; then
    echo "Given number $NUMBER is odd and less than 10"
else
    echo "Given number $NUMBER is odd and greater than 10"
fi