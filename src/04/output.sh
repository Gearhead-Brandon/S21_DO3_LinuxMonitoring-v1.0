#!/bin/bash

echo "$(print_colored_parameter "HOSTNAME" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$HOSTNAME" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "TIMEZONE" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$TIMEZONE" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "USER" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$USER" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "OS" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$OS" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "DATE" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$DATE" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "UPTIME" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$UPTIME" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "UPTIME_SEC" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$UPTIME_SEC" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "IP" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$IP" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "MASK" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$MASK" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "GATEWAY" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$GATEWAY" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "RAM_TOTAL" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$RAM_TOTAL" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "RAM_USED" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$RAM_USED" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "RAM_FREE" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$RAM_FREE" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "SPACE_ROOT" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$SPACE_ROOT" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "SPACE_ROOT_USED" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$SPACE_ROOT_USED" "${column2_background}" "${column2_font_color}")"
echo "$(print_colored_parameter "SPACE_ROOT_FREE" "${column1_background}" "${column1_font_color}") = $(print_colored_parameter "$SPACE_ROOT_FREE" "${column2_background}" "${column2_font_color}")"

echo
print_color_scheme