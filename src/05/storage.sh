#!/bin/bash

get_file_type() {
    local file="$1"
    if [ -f "$file" ]; then
        local extension="${file##*.}"
        case "$extension" in
            conf)
                echo "Configuration file"
                ;;
            txt)
                echo "Txt file"
                ;;
            log)
                echo "Log file"
                ;;
            sh)
                echo "Executable file"
                ;;
            exe)
                echo "Executable file"
                ;;
            out)
                echo "Executable file"
                ;;
            zip)
                echo "Archive file"
                ;;         
            *)
                echo "Unknown file"
                ;;
        esac
    elif [ -L "$file" ]; then
        echo "Symbolic link"
    else
        echo "Unknown type"
    fi
}

convert_size() {
    local size="$1"
    if [ "$size" -ge 1000000 ]; then
        echo "$(($size / 1000000)) GB"
    elif [ "$size" -ge 1000 ]; then
        echo "$(($size / 1000)) MB"
    else
        echo "${size} KB"
    fi
}