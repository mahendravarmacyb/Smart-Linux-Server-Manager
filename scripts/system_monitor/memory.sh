#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "          MEMORY USAGE"
    echo "========================================"
    echo

    free -h

    echo
    read -p "Press Enter to go back..."
    break
done
