#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "      SEARCH FILE / DIRECTORY"
    echo "========================================"
    echo

    read -p "Enter file or directory name (0 to go back): " name

    if [[ "$name" == "0" ]]; then
        break
    fi

    echo
    echo "Searching..."
    echo

    result=$(find . -iname "*$name*" 2>/dev/null)

    if [[ -z "$result" ]]; then
        echo "No matching files or directories found."
    else
        echo "Search Results:"
        echo
        echo "$result"
    fi

    echo
    read -p "Press Enter to continue..."
done
