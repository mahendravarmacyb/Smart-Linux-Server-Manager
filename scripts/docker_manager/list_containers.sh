#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "        LIST CONTAINERS"
    echo "========================================"
    echo

    docker ps -a

    echo
    read -p "Press Enter to go back..."
    break
done
