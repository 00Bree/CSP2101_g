#!/bin/bash

#Student Name: Bhrikuti Gurung| Student Number: 10526516

while true; do
    echo -e "  \nWhat word are you searching for?: "                                                        #prompting users for a pattern they wish to search
    read pattern                                                                                            #reading the pattern
    echo -e "TYPE\n'W' for whole word searches\n'A' for any match on the line\n'I' for inverted matches"    #prompting users for specific type of search
    read match                                                                                              #reading the type of search
    if (( $match == "W" )); then
        grep -w "$pattern" access_log.txt                                                                   #Using grep -w to find the whole word pattern given by the user
        count="$(grep -c "$pattern" access_log.txt)"                                                        #Using grep -c to count the total matched results found and storing it in the variable count
        echo "$count matching results found"                                                                
        if (($count == 0)); then                                                                            #ALerting the user that no matches were found if count = 0                    
            echo "No matches were found"
        fi
    elif (( $match == "A")); then
        grep "$pattern" access_log.txt
        count="$(grep -c "$pattern" access_log.txt)"
        echo "$count matching results found"
        if (($count == 0)); then
            echo "No matches were found"
        fi
    elif (( $match == "I")); then
        grep -v "$pattern" access_log.txt                                                                   #Using grep -v to find inverted searches
        count="$(grep -vc "$pattern" access_log.txt)"                                                                        
        echo "$count matching results found"
        if (($count == 0)); then
            echo "No matches were found"
        fi
    fi
    read -p "Do you wish to continue searching? Y/N : "  response                                    #Prompting the user if they wish to continue searching
    if [[ $response =~ ^[Yy]$ ]]; then
        continue
    else 
        exit
    fi
    break
done
exit 0