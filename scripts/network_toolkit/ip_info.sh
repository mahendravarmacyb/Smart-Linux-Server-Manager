#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "          IP INFORMATION"
    echo "========================================"
    echo

    echo "Local IP Address(es)"
    hostname -I

    echo
    echo "Network Interfaces"
    ip addr show

    echo
    read -p "Press Enter to go back..."
    break
done
