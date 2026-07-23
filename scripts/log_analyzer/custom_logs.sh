#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "         CUSTOM LOG VIEWER"
    echo "========================================"
    echo

    read -p "Enter log file path (0 to go back): " logfile

    if [[ "$logfile" == "0" ]]; then
        break
    fi

    if [[ ! -f "$logfile" ]]; then
        echo
        echo "Log file not found!"
        read -p "Press Enter to continue..."
        continue
    fi

    clear
    less "$logfile"
done
