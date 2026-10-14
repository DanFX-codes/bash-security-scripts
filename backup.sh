#!/bin/bash

echo "===== BACKUP SCRIPTS ====="

if [ "$#" -eq 0 ]; then
echo "Usage: $0 <file-or-directory>"
exit 1
fi

source_path="$1"

if [ -e "$source_path" ]; then
echo "Source exists: $source_path"
else
echo "ERROR: Source does not exist: $source_path"
exit 1
fi

backup_dir="$HOME/backups"
timestamp=$(date +%Y%m%d_%H%M%S)
filename=$(basename "$source_path")
backup_file="$backup_dir/${filename}_${timestamp}.tar.gz"

mkdir -p "$backup_dir" 

if tar -czf "$backup_file" -C "$(dirname "$source_path")" -- "$(basename "$source_path")"; then
echo "Backup successful!"
echo "Backup saved to: $backup_file"
else
echo "Backup failed."
exit 1
fi
