#!/bin/bash

# Check if dos2unix is installed
if ! command -v dos2unix &> /dev/null
then
    echo "dos2unix could not be found, installing..."
    sudo apt-get install dos2unix -y
fi

# Convert all .sh files in the current directory to LF
for file in *.sh; do
    if [ -f "$file" ]; then
        echo "Converting $file to LF..."
        dos2unix "$file"
    fi
done

echo "All .sh files have been converted to LF."
