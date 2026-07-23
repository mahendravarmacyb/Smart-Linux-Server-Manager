#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "           PORT SCANNER"
    echo "========================================"
    echo

    read -p "Enter target IP/Host (0 to go back): " target

    [[ "$target" == "0" ]] && break

    sudo nmap -sV "$target"

    echo
    read -p "Press Enter to continue..."
done
