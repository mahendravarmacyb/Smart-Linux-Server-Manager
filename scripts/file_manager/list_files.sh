#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "            LIST FILES"
    echo "========================================"
    echo

    echo "Current Directory: $(pwd)"
    echo

    ls -lah

    echo
    echo "========================================"
    echo "1. Refresh"
    echo "2. Change Directory"
    echo "0. Back"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            continue
            ;;
        2)
            read -p "Enter directory path: " dir

            if [[ -d "$dir" ]]; then
                cd "$dir" || {
                    echo "Unable to open directory."
                    read -p "Press Enter to continue..."
                }
            else
                echo
                echo "Directory does not exist!"
                read -p "Press Enter to continue..."
            fi
            ;;
        0)
            break
            ;;
        *)
            echo
            echo "Invalid choice!"
            sleep 1
            ;;
    esac
done
