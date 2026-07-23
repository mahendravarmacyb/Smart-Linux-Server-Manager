#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "       MOVE FILE / DIRECTORY"
    echo "========================================"
    echo

    read -p "Enter source file/directory (0 to go back): " source

    if [[ "$source" == "0" ]]; then
        break
    fi

    if [[ ! -e "$source" ]]; then
        echo
        echo "Source does not exist!"
        read -p "Press Enter to continue..."
        continue
    fi

    read -p "Enter destination path: " destination

    if [[ -z "$destination" ]]; then
        echo
        echo "Destination cannot be empty!"
        read -p "Press Enter to continue..."
        continue
    fi

    mv "$source" "$destination"

    if [[ $? -eq 0 ]]; then
        echo
        echo "Move completed successfully."
    else
        echo
        echo "Move failed."
    fi

    echo
    read -p "Press Enter to continue..."
done
