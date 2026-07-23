#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "         SCHEDULE BACKUP"
    echo "========================================"
    echo
    echo "1. Schedule Daily Backup"
    echo "2. View Scheduled Backups"
    echo "3. Remove All Scheduled Backups"
    echo "0. Back"
    echo

    read -p "Enter your choice: " choice

    case $choice in

        1)

            read -p "Enter source directory: " source

            if [[ ! -d "$source" ]]; then
                echo
                echo "Directory does not exist!"
                read -p "Press Enter to continue..."
                continue
            fi

            read -p "Enter backup name: " backup_name

            read -p "Enter hour (0-23): " hour
            read -p "Enter minute (0-59): " minute

            mkdir -p backups

            (
                crontab -l 2>/dev/null

                echo "$minute $hour * * * tar -czf $(pwd)/backups/${backup_name}_\$(date +\%Y\%m\%d_\%H\%M\%S).tar.gz \"$source\" >> $(pwd)/logs/backup.log 2>&1"

            ) | crontab -

            echo
            echo "Daily backup scheduled successfully."

            read -p "Press Enter to continue..."
            ;;

        2)

            echo
            echo "Scheduled Cron Jobs"
            echo "-----------------------------"

            crontab -l 2>/dev/null || echo "No scheduled backups."

            echo
            read -p "Press Enter to continue..."
            ;;

        3)

            crontab -r

            echo
            echo "All scheduled backups removed."

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
