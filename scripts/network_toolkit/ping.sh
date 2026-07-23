#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "            PING HOST"
    echo "========================================"
    echo

    read -p "Enter hostname/IP (0 to go back): " host

    [[ "$host" == "0" ]] && break

    ping -c 4 "$host"

    echo
    read -p "Press Enter to continue..."
done
