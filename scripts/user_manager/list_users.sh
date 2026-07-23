#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "            LIST USERS"
    echo "========================================"
    echo

    cut -d: -f1 /etc/passwd

    echo
    read -p "Press Enter to go back..."
    break
done
