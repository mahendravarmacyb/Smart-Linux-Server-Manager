#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "          SYSTEM MONITOR"
    echo "========================================"
    echo
    echo "1. CPU Usage"
    echo "2. Memory Usage"
    echo "3. Disk Usage"
    echo "4. Running Processes"
    echo "5. System Uptime"
    echo "0. Back to Main Menu"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash scripts/system_monitor/cpu.sh
            ;;
        2)
            bash scripts/system_monitor/memory.sh
            ;;
        3)
            bash scripts/system_monitor/disk.sh
            ;;
        4)
            bash scripts/system_monitor/processes.sh
            ;;
        5)
            bash scripts/system_monitor/uptime.sh
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
