#!/bin/bash

change_permissions() {
    find "$1" -type f -exec chmod a+rx {} \;

    find "$1" -type d -exec chmod a+rx {} \;
}

current_directory=$(pwd)

change_permissions "$current_directory"
