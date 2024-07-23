#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: The script must be run with 1 parameter."
    exit 1
fi

if [[ ! $1 =~ ^/.*\/$ ]]; then
    echo "The parameters must begin and end with /"
    exit 1
fi

directory=$1

if [ ! -d "$directory" ]; then
    echo "The directory does not exist."
    exit 1
fi

source storage.sh

start_time=$(date +%s.%N)

source collect_data.sh

source output.sh

end_time=$(date +%s.%N)
lead_time=$(awk "BEGIN { print $end_time - $start_time }")
echo "Script execution time in seconds = $lead_time"