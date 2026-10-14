#!/bin/bash

echo "===== SYSTEM TROUBLESHOOTING REPORT ====="
echo
echo "[1] System Information"
echo "Hostname: $(hostname)"
echo "Current user: $(whoami)"
echo "System uptime:"
uptime
echo

echo "[2] Disk Space Usage"
df -h
echo

echo "[3] Memory Usage"
free -h
echo

echo "[4] Network Connectivity"
if ping -c 4 -W 2 1.1.1.1 > /dev/null 2>&1; then
echo "Network connectivity: SUCCESS"
else
echo "Network connectivity: FAILED"
fi
echo

echo "[5] System Load"
uptime
echo

echo "[6] Top Processes by CPU Usage"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
echo
