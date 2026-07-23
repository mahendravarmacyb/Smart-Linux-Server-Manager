#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "      FILE INFORMATION"
    echo "========================================"
    echo

    read -p "Enter file/directory name (0 to go back): " target

    if [[ "$target" == "0" ]]; then
        break
    fi

    if [[ ! -e "$target" ]]; then
        echo
        echo "File or directory not found!"
        read -p "Press Enter to continue..."
        continue
    fi

    echo
    echo "----------------------------------------"

    ls -lh "$target"

    echo "----------------------------------------"

    stat "$target"

    echo "----------------------------------------"

    echo
    read -p "Press Enter to continue..."
done
