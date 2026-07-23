#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "          RESTORE BACKUP"
    echo "========================================"
    echo

    read -p "Enter backup file (.tar.gz) (0 to go back): " backup

    if [[ "$backup" == "0" ]]; then
        break
    fi

    if [[ ! -f "$backup" ]]; then
        echo
        echo "Backup file does not exist!"
        read -p "Press Enter to continue..."
        continue
    fi

    read -p "Enter restore destination: " destination

    if [[ -z "$destination" ]]; then
        echo
        echo "Destination cannot be empty!"
        read -p "Press Enter to continue..."
        continue
    fi

    mkdir -p "$destination"

    tar -xzf "$backup" -C "$destination"

    if [[ $? -eq 0 ]]; then
        echo
        echo "Backup restored successfully."

        echo "$(date) : Restored -> $backup" >> logs/backup.log
    else
        echo
        echo "Restore failed."
    fi

    echo
    read -p "Press Enter to continue..."

done
