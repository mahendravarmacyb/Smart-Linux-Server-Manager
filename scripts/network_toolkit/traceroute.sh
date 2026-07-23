#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "           TRACEROUTE"
    echo "========================================"
    echo

    read -p "Enter hostname/IP (0 to go back): " host

    [[ "$host" == "0" ]] && break

    traceroute "$host"

    echo
    read -p "Press Enter to continue..."
done
