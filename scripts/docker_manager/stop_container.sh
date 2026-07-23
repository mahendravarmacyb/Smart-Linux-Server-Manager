#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "        STOP CONTAINER"
    echo "========================================"
    echo

    docker ps

    echo

    read -p "Enter container ID or name (0 to go back): " container

    [[ "$container" == "0" ]] && break

    docker stop "$container"

    if [[ $? -eq 0 ]]; then
        echo
        echo "Container stopped successfully."
    else
        echo
        echo "Failed to stop container."
    fi

    echo
    read -p "Press Enter to continue..."
done
