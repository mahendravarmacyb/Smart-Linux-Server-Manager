#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "            FILE MANAGER"
    echo "========================================"
    echo
    echo "1. Create File"
    echo "2. Create Directory"
    echo "3. Rename File/Directory"
    echo "4. Copy File/Directory"
    echo "5. Move File/Directory"
    echo "6. Delete File/Directory"
    echo "7. Search File/Directory"
    echo "8. File Information"
    echo "9. List Files"
    echo "0. Back to Main Menu"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash scripts/file_manager/create_file.sh
            ;;
        2)
            bash scripts/file_manager/create_directory.sh
            ;;
        3)
            bash scripts/file_manager/rename.sh
            ;;
        4)
            bash scripts/file_manager/copy.sh
            ;;
        5)
            bash scripts/file_manager/move.sh
            ;;
        6)
            bash scripts/file_manager/delete.sh
            ;;
        7)
            bash scripts/file_manager/search.sh
            ;;
        8)
            bash scripts/file_manager/file_info.sh
            ;;
        9)
            bash scripts/file_manager/list_files.sh
            ;;
        0)
            break
            ;;
        *)
            echo "Invalid choice!"
            sleep 1
            ;;
    esac
done
