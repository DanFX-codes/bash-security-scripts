#!/bin/bash
 
for file in /etc/*
do
if [ -f "$file" ]; then
echo "file: $file"
elif [ -d "$file" ]; then
echo "directory: $file"
fi
done
