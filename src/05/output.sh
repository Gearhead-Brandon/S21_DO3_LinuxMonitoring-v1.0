#!/bin/bash

echo "Total number of folders (including all nested ones) = $number_of_dirs"
##################################################################################
echo "TOP 5 folders of maximum size arranged in descending order:"
IFS=$'\n'
sorted_folder=($(sort -nr <<<"${folders_numbers[*]}"))
unset IFS

for ((i = 0; i < 5 && i < ${#sorted_folder[@]} ; i++)); do
    folder_info="${sorted_folder[$i]}"
    size="${folder_info%% *}"
    path="${folder_info#* }"
    echo "$((i + 1)) - $path, $(convert_size $size)"
done
echo "etc up to 5"
##################################################################################
numbers_of_files=${#file_sizes[@]}
echo "Total number of files = $numbers_of_files"
##################################################################################
echo "Number of:"
echo "Configuration files = $conf_files"
echo "Text files = $txt_files"
echo "Executable files = $exe_files"
echo "Log files (with the extension .log) = $log_files"
echo "Archive files = $arch_files"
echo "Symbolic links = $sym_links"
##################################################################################
echo "Top 10 files of maximum size arranged in descending order:"
IFS=$'\n'
sorted_files=($(sort -nr <<<"${file_sizes[*]}"))
unset IFS

for ((i = 0; i < 10 && i < ${#sorted_files[@]} ; i++)); do
    file_info="${sorted_files[$i]}"
    size="${file_info%% *}"
    path="${file_info#* }"
    type=$(get_file_type "$path")
    echo "$((i + 1)) - $path, $(convert_size $size), $type"
done
echo etc up to 10
##################################################################################
echo "Top 10 executable files of the maximum size arranged in descending order:"
IFS=$'\n'
sorted_executables=($(grep -E '^.*/.*\.(exe|out|sh)$' <<<"${file_sizes[*]}" | sort -nr))
unset IFS

for ((i = 0; i < 10 && i < ${#sorted_executables[@]} ; i++)); do
    file_info="${sorted_executables[$i]}"
    size="${file_info%% *}"
    path="${file_info#* }"
    md5=$(md5sum "$path" | cut -d ' ' -f 1)
    echo "$((i + 1)) - $path, $(convert_size $size), $md5"
done
echo "etc up to 10"

##################################################################################