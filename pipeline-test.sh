#!/bin/bash

echo "===== BASH PIPELINE TEST ====="

echo "Files containing 'pass' in /etc:"
ls /etc | grep "pass"

echo
echo " searching for bash processes:"
ps aux | grep "bash"
