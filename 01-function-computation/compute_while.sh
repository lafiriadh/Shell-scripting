#!/bin/bash

# Check if input file is provided
if [[ ! -f "$1" ]]; then
  echo "Usage: $0 input_file"
  exit 1
fi

while read -r line; do
  flag=1
  f=0
  for val in $line; do
    if [ "$flag" -eq 1 ]; then
      f=$((3 * val * val))
    elif [ "$flag" -eq 2 ]; then
      f=$((f + 4 * val))
    elif [ "$flag" -eq 3 ]; then
      f=$((f + 5 * val))
    fi
    flag=$((flag + 1))
  done
  echo "$f"
done < "$1"

