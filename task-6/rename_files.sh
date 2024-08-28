#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <rename_files.sh>"
  exit 1
fi

rename_files.sh="$1"

if [ ! -d "$rename_files.sh" ]; then
  echo "$rename_files.sh is not a directory"
  exit 1
fi

cd "$rename_files.sh" || { echo "error rename_files.sh is exit"; exit 1; }

for file in *.txt; do
  if [ "$file" = *.txt ]; then
    echo "no .txt files found in 'rename_files.sh'"
    exit
  fi
  mv "$file" "old_$file"
  echo "Renaming completed"
done
