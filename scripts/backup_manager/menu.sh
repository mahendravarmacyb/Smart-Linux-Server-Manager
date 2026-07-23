#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "          BACKUP MANAGER"
    echo "========================================"
    echo
    echo "1. Create Backup"
    echo "2. Restore Backup"
    echo "3. Schedule Backup"
    echo "4. Backup Logs"
    echo "0. Back to Main Menu"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash scripts/backup_manager/create_backup.sh
            ;;
        2)
            bash scripts/backup_manager/restore_backup.sh
            ;;
        3)
            bash scripts/backup_manager/schedule_backup.sh
            ;;
        4)
            bash scripts/backup_manager/backup_logs.sh
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
