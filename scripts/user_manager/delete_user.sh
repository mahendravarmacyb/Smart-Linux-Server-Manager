#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "           DELETE USER"
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

    read -p "Delete home directory also? (y/n): " option

    if [[ "$option" =~ ^[Yy]$ ]]; then
        sudo userdel -r "$username"
    else
        sudo userdel "$username"
    fi

    if [[ $? -eq 0 ]]; then
        echo
        echo "User deleted successfully."
    else
        echo
        echo "Failed to delete user."
    fi

    read -p "Press Enter to continue..."

done
