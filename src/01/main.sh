#!/bin/bash

if [ $# -eq 1 ]; then
    if [[ ! "$1" =~ ^[[:digit:]]+$ ]]; then
        echo "Parameter : $1"
    else
        echo "Please enter a text parameter"
    fi

else
    echo "Enter only one patameter"
fi

