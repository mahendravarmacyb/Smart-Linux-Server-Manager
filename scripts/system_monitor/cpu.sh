#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "             CPU USAGE"
    echo "========================================"
    echo

    top -bn1 | head -15

    echo
    read -p "Press Enter to go back..."
    break
done
