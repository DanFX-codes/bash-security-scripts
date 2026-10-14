#!/bin/bash

echo "===== SYSTEM INFORMATION ====="

echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Date: $(date)"
echo "Kernel: $(uname -r)"
echo "OS:"

cat /etc/os-release

echo "SHELL: $SHELL"
