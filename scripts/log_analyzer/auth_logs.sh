#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "       AUTHENTICATION LOGS"
    echo "========================================"
    echo

    if [[ -f /var/log/auth.log ]]; then
        sudo tail -50 /var/log/auth.log
    else
        echo "Authentication log not found."
    fi

    echo
    read -p "Press Enter to go back..."
    break
done
