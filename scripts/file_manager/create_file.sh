#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "            CREATE FILE"
    echo "========================================"
    echo

    read -p "Enter the file name (or 0 to go back): " filename

    if [[ "$filename" == "0" ]]; then
        break
    fi

    if [[ -z "$filename" ]]; then
        echo
        echo "File name cannot be empty!"
        read -p "Press Enter to continue..."
        continue
    fi

    if [[ -e "$filename" ]]; then
        echo
        echo "File already exists!"
    else
        touch "$filename"

        if [[ $? -eq 0 ]]; then
            echo
            echo "File '$filename' created successfully."
        else
            echo
            echo "Failed to create file."
        fi
    fi

    echo
    read -p "Press Enter to continue..."
done
