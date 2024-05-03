#!/bin/bash

# Function to change permissions recursively
change_permissions() {
    # Change permissions for files
    find "$1" -type f -exec chmod a+rx {} \;

    # Change permissions for directories
    find "$1" -type d -exec chmod a+rx {} \;
}

# Get the current directory
current_directory=$(pwd)

# Change permissions recursively
change_permissions "$current_directory"
