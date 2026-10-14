#!/bin/bash

echo "===== LOG ANALYZER ====="

if [ "$#" -eq 0 ]; then
echo "Usage: $0 <logfile>"
exit 1
fi

logfile="$1"

if [ -e "$logfile" ]; then
echo "It exist"
else
echo "does not exist"
fi

if [ -f "$logfile" ]; then
echo "It is a regular file"
else
echo "It is not a regular file"
fi

if [ -r "$logfile" ]; then
echo "It can be read"
else
echo "It cannot be read"
fi

echo
echo "===== LOG SUMMARY ====="

if [ ! -s "$logfile" ]; then
echo "Log file is empty."
exit 1
fi

info_count=$(grep -c "INFO" "$logfile")
warning_count=$(grep -c "WARNING" "$logfile")
error_count=$(grep -c "ERROR" "$logfile")

echo "INFO entries: $info_count"
echo "WARNING entries: $warning_count"
echo "ERROR entries: $error_count"

