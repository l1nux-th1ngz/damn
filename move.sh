#!/bin/bash

# Move the convert_to_lf.sh script to the destination directory
if [ -f "convert_to_lf.sh" ]; then
    mv convert_to_lf.sh "$HOME/bspwm1/"
    echo "Moved convert_to_lf.sh to $HOME/bspwm1."
else
    echo "convert_to_lf.sh not found in the current directory."
fi
