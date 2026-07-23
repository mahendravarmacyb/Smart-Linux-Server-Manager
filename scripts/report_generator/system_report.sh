#!/bin/bash

clear

mkdir -p reports

report="reports/system_report_$(date +%Y%m%d_%H%M%S).txt"

{
echo "========== SYSTEM REPORT =========="
echo "Generated: $(date)"
echo

echo "Hostname"
hostname
echo

echo "Kernel"
uname -r
echo

echo "CPU Information"
lscpu
echo

echo "Memory Usage"
free -h
echo

echo "Disk Usage"
df -h
echo

echo "System Uptime"
uptime
echo

} > "$report"

echo "System report generated successfully."
echo
echo "Saved to:"
echo "$report"

echo
read -p "Press Enter to continue..."
