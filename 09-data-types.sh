#!/bin/bash

Number1=100
Number2=200
NAME=Madhan

sum=$(($Number1+$Number2+$NAME))

echo "Sum is : $sum"

# size = 4, Max index = 3
LEADERS=("Steve" "Bill" "Elon" "Jeff")

echo "All leaders: ${LEADERS[@]}"
echo "First leader: ${LEADERS[0]}"
echo "First leader: ${LEADERS[10]}"