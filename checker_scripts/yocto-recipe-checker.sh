#!/bin/bash

# Check for Yocto recipe files passed as arguments
echo "Checking for Yocto recipe files..."

if [ "$#" -eq 0 ]; then
  echo "No Yocto recipe files provided."
  exit 0
fi

# Check each recipe file
for file in "$@"; do
  echo "Checking $file..."

  # Check for DESCRIPTION
  if ! grep -q "^DESCRIPTION" "$file"; then
    echo "Error: $file is missing DESCRIPTION."
    exit 1
  fi

  # Check for LICENSE
  if ! grep -q "^LICENSE" "$file"; then
    echo "Error: $file is missing LICENSE."
    exit 1
  fi

  # Check for SRC_URI
  if ! grep -q "^SRC_URI" "$file"; then
    echo "Error: $file is missing SRC_URI."
    exit 1
  fi

  echo "$file passed all checks."
done

echo "All provided Yocto recipe files passed the checks!"
