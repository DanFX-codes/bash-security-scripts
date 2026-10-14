#!/bin/bash

echo "===== PERMISSION CHECKER ====="

path="$1"

echo "Path: $path"

if [ -e "$path" ]; then
echo "File exist"
else
echo "File does not exist"
fi

if [ -f "$path" ]; then
echo "File is normal"
else
echo "file is not normal"
fi

if [ -r "$path" ]; then
echo "File is readable"
else
echo "File is not readable"
fi

if [ -w "$path" ]; then
echo "File is writable"
else
echo "File is not writable"
fi

if [ -x "$path" ]; then
echo "File is executable"
else
echo "File is not executable"
fi
