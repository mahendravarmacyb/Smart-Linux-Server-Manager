#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "          DOCKER MANAGER"
    echo "========================================"
    echo
    echo "1. List Containers"
    echo "2. Start Container"
    echo "3. Stop Container"
    echo "4. Remove Container"
    echo "5. List Images"
    echo "0. Back to Main Menu"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash scripts/docker_manager/list_containers.sh
            ;;
        2)
            bash scripts/docker_manager/start_container.sh
            ;;
        3)
            bash scripts/docker_manager/stop_container.sh
            ;;
        4)
            bash scripts/docker_manager/remove_container.sh
            ;;
        5)
            bash scripts/docker_manager/images.sh
            ;;
        0)
            break
            ;;
        *)
            echo "Invalid choice!"
            sleep 1
            ;;
    esac
done
