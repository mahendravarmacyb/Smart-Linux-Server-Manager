#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "      RENAME FILE / DIRECTORY"
    echo "========================================"
    echo

    read -p "Enter the current file/directory name (0 to go back): " old_name

    if [[ "$old_name" == "0" ]]; then
        break
    fi

    if [[ ! -e "$old_name" ]]; then
        echo
        echo "File or directory does not exist!"
        read -p "Press Enter to continue..."
        continue
    fi

    read -p "Enter the new name: " new_name

    if [[ -z "$new_name" ]]; then
        echo
        echo "New name cannot be empty!"
        read -p "Press Enter to continue..."
        continue
    fi

    if [[ -e "$new_name" ]]; then
        echo
        echo "A file or directory with that name already exists!"
        read -p "Press Enter to continue..."
        continue
    fi

    mv "$old_name" "$new_name"

    if [[ $? -eq 0 ]]; then
        echo
        echo "Renamed successfully."
    else
        echo
        echo "Failed to rename."
    fi

    echo
    read -p "Press Enter to continue..."

done
