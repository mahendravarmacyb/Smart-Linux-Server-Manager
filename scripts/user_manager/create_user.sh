#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "           CREATE USER"
    echo "========================================"
    echo

    read -p "Enter username (0 to go back): " username

    if [[ "$username" == "0" ]]; then
        break
    fi

    if id "$username" &>/dev/null; then
        echo
        echo "User already exists!"
        read -p "Press Enter to continue..."
        continue
    fi

    sudo useradd -m "$username"

    if [[ $? -eq 0 ]]; then
        echo
        echo "User created successfully."
        echo "Set password now:"
        sudo passwd "$username"
    else
        echo
        echo "Failed to create user."
    fi

    read -p "Press Enter to continue..."

done
