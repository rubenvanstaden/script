#!/bin/bash

# Check if a directory has been provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 directory"
    exit 1
fi

# Check if the specified directory exists
if [ ! -d "$1" ]; then
    echo "Directory $1 does not exist."
    exit 1
fi

# Compress the directory into a tar.gz file
tar -czf $1.tar.gz $1

echo "The directory $1 has been compressed into $1.tar.gz."
