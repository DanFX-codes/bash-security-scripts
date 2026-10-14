#!/bin/bash

echo "===== ERROR HANDLING TEST ====="

if ls /etc > /dev/null 2>%1;
then
echo "SUCCESS: /etc was accessed."
else
echo "ERROR: Could not access /etc."
fi

echo
echo "Testing a command that should fail..."

if ls /
this-directory-does-not-exist > /dev/null 2>&1; then
echo "SUCCESS: Directory exists."
else
echo "ERROR: Directory does not exist."
fi

echo
echo "Testing exit codes..."

ls /etc

if [ $? -eq 0 ]; then
echo "THe command succeeded."
else
echo "THe command failed."
fi


echo
echo "===== Exercise ====="

ls /etc/passwd
if [ $? -eq 0 ]; then
echo "success"
else
echo "was not found"
fi

echo
if [ -r /etc/passwd ]; then
echo "readable"
else
echo "not readable"
fi
