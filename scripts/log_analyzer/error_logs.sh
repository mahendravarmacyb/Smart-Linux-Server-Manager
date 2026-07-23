#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "           ERROR LOGS"
    echo "========================================"
    echo

    if [[ -f /var/log/syslog ]]; then
        sudo grep -i "error" /var/log/syslog
    else
        echo "System log not found."
    fi

    echo
    read -p "Press Enter to go back..."
    break
done
