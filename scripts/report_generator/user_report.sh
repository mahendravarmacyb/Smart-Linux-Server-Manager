#!/bin/bash

clear

mkdir -p reports

report="reports/user_report_$(date +%Y%m%d_%H%M%S).txt"

{
echo "========== USER REPORT =========="
echo "Generated: $(date)"
echo

echo "Current Users"
who
echo

echo "All System Users"
cut -d: -f1 /etc/passwd
echo

echo "Logged-in User"
whoami
echo

} > "$report"

echo "User report generated successfully."
echo
echo "Saved to:"
echo "$report"

echo
read -p "Press Enter to continue..."
