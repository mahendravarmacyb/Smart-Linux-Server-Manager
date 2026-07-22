#!/bin/bash

clear

show_banner() {
    echo "========================================"
    echo "      SMART LINUX SERVER MANAGER"
    echo "========================================"
}

show_menu() {
    echo "1. File Manager"
    echo "2. Backup Manager"
    echo "3. Log Analyzer"
    echo "4. User Manager"
    echo "5. System Monitor"
    echo "6. Network Toolkit"
    echo "7. Docker Manager"
    echo "8. Report Generator"
    echo "0. Exit"
    echo
}

while true; do
    clear
    show_banner
    show_menu

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash scripts/file_manager/menu.sh
            ;;
        2)
            bash scripts/backup_manager/menu.sh
            ;;
        3)
            bash scripts/log_analyzer/menu.sh
            ;;
        4)
            bash scripts/user_manager/menu.sh
            ;;
        5)
            bash scripts/system_monitor/menu.sh
            ;;
        6)
            bash scripts/network_toolkit/menu.sh
            ;;
        7)
            bash scripts/docker_manager/menu.sh
            ;;
        8)
            bash scripts/report_generator/menu.sh
            ;;
        0)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            sleep 1
            ;;
    esac
done
