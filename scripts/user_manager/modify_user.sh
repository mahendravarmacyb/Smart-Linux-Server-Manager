#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "      MODIFY USER PASSWORD"
    echo "========================================"
    echo

    read -p "Enter username (0 to go back): " username

    if [[ "$username" == "0" ]]; then
        break
    fi

    if ! id "$username" &>/dev/null; then
        echo
        echo "User does not exist!"
        read -p "Press Enter to continue..."
        continue
    fi

    sudo passwd "$username"

    read -p "Press Enter to continue..."

done
