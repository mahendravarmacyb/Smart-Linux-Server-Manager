#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "           LOG ANALYZER"
    echo "========================================"
    echo
    echo "1. Authentication Logs"
    echo "2. System Logs"
    echo "3. Error Logs"
    echo "4. Custom Log Viewer"
    echo "0. Back to Main Menu"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash scripts/log_analyzer/auth_logs.sh
            ;;
        2)
            bash scripts/log_analyzer/system_logs.sh
            ;;
        3)
            bash scripts/log_analyzer/error_logs.sh
            ;;
        4)
            bash scripts/log_analyzer/custom_logs.sh
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
