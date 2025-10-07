#!/bin/bash

Number1=100
Number2=200
NAME=Madhan

sum=$(($Number1+$Number2+$NAME))

echo "Sum is : $sum"

LEADERS=("Steve" "Bill" "Elon" "Jeff")

echo "All leaders: ${LEADERS[@]}"