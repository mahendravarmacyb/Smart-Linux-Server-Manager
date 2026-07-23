#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "        REPORT GENERATOR"
    echo "========================================"
    echo
    echo "1. System Report"
    echo "2. User Report"
    echo "3. Network Report"
    echo "4. Backup Report"
    echo "0. Back to Main Menu"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash scripts/report_generator/system_report.sh
            ;;
        2)
            bash scripts/report_generator/user_report.sh
            ;;
        3)
            bash scripts/report_generator/network_report.sh
            ;;
        4)
            bash scripts/report_generator/backup_report.sh
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
