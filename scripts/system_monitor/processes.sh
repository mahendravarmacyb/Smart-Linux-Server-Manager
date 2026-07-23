#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "       RUNNING PROCESSES"
    echo "========================================"
    echo

    ps -ef

    echo
    read -p "Press Enter to go back..."
    break
done
