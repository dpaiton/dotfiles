#!/bin/bash

# Check if directory has been provided
if [ -z "$1" ]
then
    echo "No directory provided. Usage: ./script.sh <directory>"
    exit 1
fi

# Check if directory exists
if [ ! -d "$1" ]
then
    echo "Directory does not exist: $1"
    exit 1
fi

# Recursively find and remove __pycache__ directories
find "$1" -name "__pycache__" -type d -exec rm -rf {} +

echo "Successfully removed all __pycache__ directories under $1"

