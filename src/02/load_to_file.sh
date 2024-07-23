#!/bin/bash

choice=$()

read -p "Do you want to save data to a file ? (Yy/N): " choice

if [[ $choice =~ ^[Yy]+$ ]]; then

    filename="$(date +"%d_%m_%y_%H_%M_%S").status"
    {
        source output.sh
    } > "$filename"

    echo "Data saved to file : $filename"

fi