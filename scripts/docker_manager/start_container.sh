#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "       START CONTAINER"
    echo "========================================"
    echo

    docker ps -a

    echo

    read -p "Enter container ID or name (0 to go back): " container

    [[ "$container" == "0" ]] && break

    docker start "$container"

    if [[ $? -eq 0 ]]; then
        echo
        echo "Container started successfully."
    else
        echo
        echo "Failed to start container."
    fi

    echo
    read -p "Press Enter to continue..."
done
