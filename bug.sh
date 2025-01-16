#!/bin/bash

# This script attempts to process a file, but it handles errors poorly.

file_to_process="my_file.txt"

# Incorrect way to check if a file exists
if [ -f $file_to_process ]; then
  echo "File exists, processing..."
  # ... some processing ...
  cat $file_to_process
else
  echo "Error: File not found"
exit 1
fi

# Vulnerable to word splitting and globbing
command="ls -l $file_to_process"
eval $command

# Unquoted variables, potential for issues
my_var=10
echo "The value is: $my_var"

# Using backticks for command substitution is generally discouraged
result=`date`
echo "The date is: $result"