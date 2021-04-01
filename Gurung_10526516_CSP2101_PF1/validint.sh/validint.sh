#!/bin/bash
#Student name: Bhrikuti Gurung/ Student number: 10526516

while true; do
    read -p "Enter a value: " value                                                         #Prompting user for a value
        if ! [[ $value =~ ^[0-9]+$ ]] || [[ $value != 20 ]] && [[ $value != 40 ]]; then     #Checking if the value is not an intger or not equals to 20 and 40
            echo -e "You have not entered the right value\nPlease enter another value"
        else
            echo "That is the correct value!"
            break
        fi
done

exit 0
    