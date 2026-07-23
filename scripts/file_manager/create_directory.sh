#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "         CREATE DIRECTORY"
    echo "========================================"
    echo

    read -p "Enter the directory name (or 0 to go back): " dirname

    if [[ "$dirname" == "0" ]]; then
        break
    fi

    if [[ -z "$dirname" ]]; then
        echo
        echo "Directory name cannot be empty!"
        read -p "Press Enter to continue..."
        continue
    fi

    if [[ -d "$dirname" ]]; then
        echo
        echo "Directory already exists!"
    else
        mkdir "$dirname"

        if [[ $? -eq 0 ]]; then
            echo
            echo "Directory '$dirname' created successfully."
        else
            echo
            echo "Failed to create directory."
        fi
    fi

    echo
    read -p "Press Enter to continue..."
done
