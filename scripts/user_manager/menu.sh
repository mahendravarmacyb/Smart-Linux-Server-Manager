#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "           USER MANAGER"
    echo "========================================"
    echo
    echo "1. Create User"
    echo "2. Delete User"
    echo "3. Modify User Password"
    echo "4. List Users"
    echo "5. Lock / Unlock User"
    echo "0. Back to Main Menu"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash scripts/user_manager/create_user.sh
            ;;
        2)
            bash scripts/user_manager/delete_user.sh
            ;;
        3)
            bash scripts/user_manager/modify_user.sh
            ;;
        4)
            bash scripts/user_manager/list_users.sh
            ;;
        5)
            bash scripts/user_manager/lock_unlock.sh
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
