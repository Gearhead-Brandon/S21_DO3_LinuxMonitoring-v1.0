#!/bin/bash

if [ $# -ne 4 ]; then
    echo "Error: The script must be run with 4 paraneters."
    exit 1
fi

if [[ ! $1 =~ ^[1-6]$ ]] || [[ ! $2 =~ ^[1-6]$ ]] || [[ ! $3 =~ ^[1-6]$ ]] || [[ ! $4 =~ ^[1-6]$ ]]; then
    echo "Error: Parameters must be numbers from 1 to 6 inclusive."
    exit 1
fi

if [ $1 -eq $2 ] || [ $3 -eq $4 ]; then
    echo "Error: Background and font colors must not match."
    exit 1
fi

source storage.sh

source collect_system_data.sh

source output.sh