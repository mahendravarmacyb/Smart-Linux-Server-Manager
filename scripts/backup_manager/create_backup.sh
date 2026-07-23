#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "          CREATE BACKUP"
    echo "========================================"
    echo

    read -p "Enter source directory (0 to go back): " source

    if [[ "$source" == "0" ]]; then
        break
    fi

    if [[ ! -d "$source" ]]; then
        echo
        echo "Directory does not exist!"
        read -p "Press Enter to continue..."
        continue
    fi

    read -p "Enter backup name: " backup_name

    if [[ -z "$backup_name" ]]; then
        echo
        echo "Backup name cannot be empty!"
        read -p "Press Enter to continue..."
        continue
    fi

    mkdir -p backups

    backup_file="backups/${backup_name}_$(date +%Y%m%d_%H%M%S).tar.gz"

    tar -czf "$backup_file" "$source"

    if [[ $? -eq 0 ]]; then
        echo
        echo "Backup created successfully!"
        echo "Saved as:"
        echo "$backup_file"

        echo "$(date) : Backup created -> $backup_file" >> logs/backup.log
    else
        echo
        echo "Backup failed!"
    fi

    echo
    read -p "Press Enter to continue..."

done
