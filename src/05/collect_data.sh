#!/bin/bash

all_files=()

number_of_dirs=$(find "$directory" -type d | wc -l)
##############################################################
folders_numbers=()
while IFS= read -r -d '' folder; do
    size=$(du -s "$folder" | awk '{print $1}')
    folders_numbers+=("$size $folder")

        all_files+=("$folder")

done < <(find "$directory" -type d -print0)
##############################################################
file_sizes=()

while IFS= read -r -d '' file; do
    size=$(stat -c %s "$file")
    file_sizes+=("$size $file")

        all_files+=("$file")

done < <(find "$directory" -type f -print0)
################################################################
conf_files=0
txt_files=0
exe_files=0
log_files=0
arch_files=0
sym_links=0

for file in "${all_files[@]}"; do
    type=$(get_file_type "$file")

    case "$type" in
        "Configuration file")
            conf_files=$((conf_files + 1))
            ;;
        "Txt file")
            txt_files=$((txt_files + 1))
            ;;
        "Executable file")
            exe_files=$((exe_files + 1))
            ;;
        "Log file")
            log_files=$((log_files + 1))
            ;;
        "Archive file")
            arch_files=$((arch_files + 1))
            ;;
        "Symbolic link")
            sym_links=$((sym_links + 1))
            ;;
    esac
done