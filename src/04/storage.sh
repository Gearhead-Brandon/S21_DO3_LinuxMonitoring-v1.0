#!/bin/bash

config_file="config.conf"

flag=0

read_data_from_config() {
    if [ -f "$config_file" ]; then
        source "$config_file"
        if  [ "$column2_background" == "" ] || [ "$column2_font_color" == "" ] || [ "$column1_background" == "" ] || [ "$column1_font_color" == "" ]; then
            column1_background=0
            column1_font_color=7
            column2_background=1
            column2_font_color=4
        fi
    else 
        flag=1
        column1_background=0
        column1_font_color=7
        column2_background=1
        column2_font_color=4
    fi
}

print_colored_parameter() {

    local text="$1"
    local background="$2"
    local font_color="$3"
    echo -e "$(tput setab ${background})$(tput setaf ${font_color})${text}$(tput sgr0)"
}

print_color_scheme() {
    if [ $flag -eq 1 ]; then
        echo "Column 1 background = ${column1_background:-default} (black)"
        echo "Column 1 font color = ${column1_font_color:-default} (white)"
        echo "Column 2 background = ${column2_background:-default} (red)"
        echo "Column 2 font color = ${column2_font_color:-default} (blue)"
    else
        colors=("black" "red" "green" "yellow" "blue" "purple" "cyan" "white")
        echo "Column 1 background = ${column1_background:-default} (${colors[${column1_background:-default}]})"
        echo "Column 1 font color = ${column1_font_color:-default} (${colors[${column1_font_color:-default}]})"
        echo "Column 2 background = ${column2_background:-default} (${colors[${column2_background:-default}]})"
        echo "Column 2 font color = ${column2_font_color:-default} (${colors[${column2_font_color:-default}]})"
 
    fi
}