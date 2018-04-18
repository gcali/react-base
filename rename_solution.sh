#!/bin/bash

shopt -s globstar nullglob

set -e
set -u

old_name="ReactNet"
new_name="$1"

script_name=$(basename "$0")

echo "Script name: $script_name"

found=true

while [[ $found = true ]]; do
    found=false
    for file in **/*"$old_name"*; do
        found=true
        new_file_name=${file/$old_name/$new_name}
        mv "$file" "$new_file_name"
        echo "$file -> $new_file_name"
        break;
    done
done

find * .vscode -type f ! -name "$script_name" ! -name "*.bak" -exec sed -i "s/$old_name/$new_name/g" '{}' ';'