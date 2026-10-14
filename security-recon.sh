#!/bin/bash

if ! command -v ip > /dev/null 2>&1 || ! command -v ss > /dev/null 2>&1; then
echo "ERROR: Required networking tools are missing."
echo "The script needs the 'ip' and 'ss' commands."
exit 1
fi

report_dir="$HOME/security-reports"
timestamp=$(date +%Y%m%d_%H%M%S)

mkdir -p "$report_dir"

report_file="$report_dir/security_report_${timestamp}.txt"

exec > "$report_file" 2>&1

echo "===== SECURITY / RECONNAISSANCE REPORT ====="
echo

echo "[1] Host Information"
echo "Hostname: $(hostname)"
echo "Current user: $(whoami)"
echo "Date and time: $(date)"
echo

echo "[2] Network Interfaces and IP Addresses"
ip -brief addr
echo

echo "[3] Routing Table"
ip route
echo

echo "[4] Listening TCP/UDP ports"
ss -tuln
echo

echo "Report saved to: $report_file">&2
