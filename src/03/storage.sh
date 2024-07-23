#!/bin/bash

background_name="$1"
font_color_name="$2"
background_value="$3"
font_color_value="$4"

declare -A colors2
colors=(["1"]="15"   # white
         ["2"]="1"   # red 
         ["3"]="28"  # green
         ["4"]="20"  # blue
         ["5"]="55"  # purple
         ["6"]="0"   # black
        )

print_colored_parameter() {

    local text="$1"
    local background="$2"
    local font_color="$3"

    printf "\e[38;5;"$font_color"m"
    echo -e "\e[48;5;"$background"m${text}\e[0m"
}