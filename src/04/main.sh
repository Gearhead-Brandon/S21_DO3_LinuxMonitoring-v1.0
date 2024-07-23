#!/bin/bash

if [ $# -ne 0 ]; then
    echo "Error: The script must be run without paraneters."
    exit 1
fi

source storage.sh

read_data_from_config

source collect_system_data.sh

source output.sh