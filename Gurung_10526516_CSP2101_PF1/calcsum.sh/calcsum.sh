#!/bin/bash

#Student name: Bhrikuti Gurung / Student number: 10526516

let "sum=$1+$2+$3"                                      #Using let to carry out arithmetic calculations

if [ $sum -le 30 ]; then                                #Checking if the sum is less than or equals to 30
    echo "The sum of $1 and $2 and $3 is $sum"
else
    echo "Sum exceeds maximum allowable"
fi 
exit 0

