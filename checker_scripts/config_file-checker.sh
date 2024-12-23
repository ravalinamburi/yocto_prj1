#!/bin/bash

# Check if CONTRIBUTING.md exists
if [ ! -f "CONTRIBUTING.md" ]; then
  echo "Error: README.md not found!"
  exit 1
fi

echo "All checks passed!"
