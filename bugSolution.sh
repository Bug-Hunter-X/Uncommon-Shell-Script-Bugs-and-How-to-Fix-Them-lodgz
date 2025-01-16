#!/bin/bash

# This script demonstrates improved error handling and safer practices.

file_to_process="my_file.txt"

# Correct way to check if a file exists
if [[ -f "$file_to_process" ]]; then
  echo "File exists, processing..."
  # ... some processing ...
  cat "$file_to_process"
else
  echo "Error: File not found"
exit 1
fi

# Using safer command substitution
command="ls -l "$file_to_process""
result=$( $command )
echo "$result"

# Using safer variable expansion
my_var=10
echo "The value is: ${my_var}"

# Using $(...) for command substitution instead of backticks
date_output=$(date)
echo "The date is: $date_output"