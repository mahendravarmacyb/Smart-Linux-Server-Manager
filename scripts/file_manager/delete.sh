#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "      DELETE FILE / DIRECTORY"
    echo "========================================"
    echo

    read -p "Enter file/directory name (0 to go back): " target

    if [[ "$target" == "0" ]]; then
        break
    fi

    if [[ ! -e "$target" ]]; then
        echo
        echo "File or directory does not exist!"
        read -p "Press Enter to continue..."
        continue
    fi

    read -p "Are you sure? (y/n): " confirm

    case $confirm in
        y|Y)
            if [[ -d "$target" ]]; then
                rm -r "$target"
            else
                rm "$target"
            fi

            if [[ $? -eq 0 ]]; then
                echo
                echo "Deleted successfully."
            else
                echo
                echo "Delete failed."
            fi
            ;;
        *)
            echo
            echo "Operation cancelled."
            ;;
    esac

    echo
    read -p "Press Enter to continue..."
done
