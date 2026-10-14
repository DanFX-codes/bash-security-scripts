#!/bin/bash

echo "===== ACCOUNT / USER AUDIT ====="

if [ "$#" -eq 0 ]; then
echo "Usage: $0 <username>"
exit 1
fi

username="$1"

echo "Username: $username"

getent passwd "$username" > /dev/null 2>&1

if [ $? -eq 0 ]; then
echo "Suceed"
else
echo "failed"
fi

uid=$(getent passwd "$username" | cut -d: -f3)
echo "UID: $uid"

Home=$(getent passwd "$username" | cut -d: -f6)
echo "Home Directory: $Home"

Shell=$(getent passwd "$username" | cut -d: -f7)
echo "Login shell: $Shell"
