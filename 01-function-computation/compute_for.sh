#!/bin/bash
# Check if file is passed and exists
if [[ ! -f "$1" ]]; then
  echo "Usage: $0 input_file"
  exit 1
fi
flag=1
f= 0
for val in $(cat "$1"); do
  if [ "$flag" -eq 1 ]; then
    f=$((3 * val * val))
  elif [ "$flag" -eq 2 ]; then
    f=$((f + 4 * val))
  elif [ "$flag" -eq 3 ]; then
    f=$((f + 5 * val))
    flag=0
    echo "$f"
  fi
  flag=$((flag + 1))
done
exit 0
