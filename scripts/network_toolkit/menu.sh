#!/bin/bash

while true; do
    clear

    echo "========================================"
    echo "         NETWORK TOOLKIT"
    echo "========================================"
    echo
    echo "1. Ping Host"
    echo "2. Traceroute"
    echo "3. DNS Lookup"
    echo "4. Port Scanner"
    echo "5. IP Information"
    echo "0. Back to Main Menu"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash scripts/network_toolkit/ping.sh
            ;;
        2)
            bash scripts/network_toolkit/traceroute.sh
            ;;
        3)
            bash scripts/network_toolkit/dns_lookup.sh
            ;;
        4)
            bash scripts/network_toolkit/port_scan.sh
            ;;
        5)
            bash scripts/network_toolkit/ip_info.sh
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
