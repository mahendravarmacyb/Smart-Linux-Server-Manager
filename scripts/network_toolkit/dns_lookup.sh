#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "           DNS LOOKUP"
    echo "========================================"
    echo

    read -p "Enter domain (0 to go back): " domain

    [[ "$domain" == "0" ]] && break

    nslookup "$domain"

    echo
    read -p "Press Enter to continue..."
done
