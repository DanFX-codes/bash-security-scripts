#!/bin/bash

file="/etc/passwd"

echo "===== FILE SECURITY CHECK ====="
if [ -e "$file" ]; then
echo "path exists."
else
echo "path does not exist"
fi

if [ -f "$file" ]; then
echo "It is a regular file."
fi

if [ -r "$file" ]; then
echo "It is readable"
else
echo "not"

if [ -w "$file" ]; then
echo "writable"
else
echo "not"
fi
