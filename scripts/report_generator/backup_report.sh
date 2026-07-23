#!/bin/bash

clear

mkdir -p reports

report="reports/backup_report_$(date +%Y%m%d_%H%M%S).txt"

{
echo "========== BACKUP REPORT =========="
echo "Generated: $(date)"
echo

echo "Backup Files"
ls -lh backups/
echo

echo "Backup Logs"
echo

if [[ -f logs/backup.log ]]; then
    cat logs/backup.log
else
    echo "No backup logs found."
fi

} > "$report"

echo "Backup report generated successfully."
echo
echo "Saved to:"
echo "$report"

echo
read -p "Press Enter to continue..."
