#!/bin/bash

master_folder="/Users/finkbeca/Documents/Scripts/tex-notes/"

# Get a list of all subfolders within the master folder
subfolders=("$master_folder"/*/)

# Prompt for option selection based on the available subfolders
echo "Available options:"
for ((i=0; i<${#subfolders[@]}; i++)); do
  folder_name=$(basename "${subfolders[i]}")
  echo "$((i+1)). $folder_name"
done

read -p "Enter the option number: " option_num

# Check if the selected option number is within the valid range
if ((option_num < 1 || option_num > ${#subfolders[@]})); then
  echo "Invalid option number. Please try again."
  exit 1
fi

# Get the selected subfolder based on the option number
selected_folder="${subfolders[option_num-1]}"

# Check if the selected folder contains a separate shell script
script_path="$selected_folder/subscript.sh"
if [ ! -f "$script_path" ]; then
  echo "The selected folder does not contain a separate shell script."
  exit 1
fi


# Prompt for additional parameters
read -p "Enter folder name: " param1
read -p "Enter .tex file name: " param2

# Execute the selected script
bash "$script_path" "$param1" "$param2"