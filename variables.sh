##!/bin/bash

username=$(whoami)
hostname=$(hostname)
kernel=$(uname -r)
shell=$SHELL

echo "===== SYSTEM PROFILE ====="
echo "User: $username"
echo "Hostname: $hostname"
echo "Kernel: $kernel"
echo "Shell: $shell"
