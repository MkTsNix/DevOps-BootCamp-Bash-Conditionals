#!/bin/bash

# Place your code here

temp_type=${1: -1}
temperature=${1::-1}

if [[ $temp_type == "K" ]]
then
    result=$(($temperature-273))
    echo -n "$result"
    echo "C"
elif [[ $temp_type == "C" ]]
then
    result=$(($temperature+273))
    echo -n "$result"
    echo "K"
fi
