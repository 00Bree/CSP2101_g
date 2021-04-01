#!/bin/bash

#Student Name: Bhrikuti Gurung| Student Number: 10526516


read value
pathway=$(dirname "value")
ls -la
echo -e " The $value directory contains\nx files that contains data\nx files that are empty\nx non-empty directories\nx empty directories"

exit 0