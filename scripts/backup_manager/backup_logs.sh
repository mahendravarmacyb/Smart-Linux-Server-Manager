#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "            BACKUP LOGS"
    echo "========================================"
    echo

    if [[ -f logs/backup.log ]]; then
        cat logs/backup.log
    else
        echo "No backup logs found."
    fi

    echo
    echo "========================================"
    echo "1. Clear Backup Logs"
    echo "0. Back"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            > logs/backup.log
            echo
            echo "Backup logs cleared."
            read -p "Press Enter to continue..."
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
