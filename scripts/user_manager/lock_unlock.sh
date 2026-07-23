#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "         LOCK / UNLOCK USER"
    echo "========================================"
    echo
    echo "1. Lock User"
    echo "2. Unlock User"
    echo "0. Back"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter username: " username
            sudo passwd -l "$username"
            ;;
        2)
            read -p "Enter username: " username
            sudo passwd -u "$username"
            ;;
        0)
            break
            ;;
        *)
            echo "Invalid choice!"
            sleep 1
            ;;
    esac

    echo
    read -p "Press Enter to continue..."
done
