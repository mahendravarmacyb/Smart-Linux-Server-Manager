#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "          DOCKER IMAGES"
    echo "========================================"
    echo

    docker images

    echo
    read -p "Press Enter to go back..."
    break
done
