#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "           DISK USAGE"
    echo "========================================"
    echo

    df -h

    echo
    read -p "Press Enter to go back..."
    break
done
