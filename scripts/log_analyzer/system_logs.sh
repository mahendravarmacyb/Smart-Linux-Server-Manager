#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "          SYSTEM LOGS"
    echo "========================================"
    echo

    if [[ -f /var/log/syslog ]]; then
        sudo tail -50 /var/log/syslog
    else
        echo "System log not found."
    fi

    echo
    read -p "Press Enter to go back..."
    break
done
