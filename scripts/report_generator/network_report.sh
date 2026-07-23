#!/bin/bash

clear

mkdir -p reports

report="reports/network_report_$(date +%Y%m%d_%H%M%S).txt"

{
echo "========== NETWORK REPORT =========="
echo "Generated: $(date)"
echo

echo "Hostname"
hostname
echo

echo "IP Address"
hostname -I
echo

echo "Routing Table"
ip route
echo

echo "Listening Ports"
ss -tuln
echo

} > "$report"

echo "Network report generated successfully."
echo
echo "Saved to:"
echo "$report"

echo
read -p "Press Enter to continue..."
