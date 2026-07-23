#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "       REMOVE CONTAINER"
    echo "========================================"
    echo

    docker ps -a

    echo

    read -p "Enter container ID or name (0 to go back): " container

    [[ "$container" == "0" ]] && break

    docker rm "$container"

    if [[ $? -eq 0 ]]; then
        echo
        echo "Container removed successfully."
    else
        echo
        echo "Failed to remove container."
    fi

    echo
    read -p "Press Enter to continue..."
done
