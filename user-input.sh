#!/bin/bash

echo "===== SYSTEM PROFILE ====="
read -p "Enter your name: " name

username=$(whoami)
hostname=$(hostname)
kernel=$(uname -r)

echo
echo "Hello, $name!"
echo "Your Linux username is:$username"
echo "Your hostname is:$hostname"
echo "Your Kernel is: $kernel"




