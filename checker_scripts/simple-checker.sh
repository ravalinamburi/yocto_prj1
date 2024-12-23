#!/bin/bash

# Check if README.md exists
if [ ! -f "README.md" ]; then
  echo "Error: README.md not found!"
  exit 1
fi

# Check if LICENSE file exists
if [ ! -f "LICENSE" ]; then
  echo "Error: LICENSE file not found!"
  exit 1
fi

echo "All checks passed!"
