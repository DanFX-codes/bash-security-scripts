#!/bin/bash

file="$1"

if [ -e "$file" ]; then
echo "$file exists"
else
echo "$file does not exist"
fi

if [ -f "$file" ]; then
echo "$file is a regular file"
else
echo "$file is not a regular file"
fi

if [ -r "$file" ]; then
echo "$file is readable"
else
echo "$file is not readable"
fi
