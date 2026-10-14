#!/bin/bash

echo "===== COMMAND CHECK ====="

if ls /etc > /dev/null; then
echo "succesfullu accessed /etc."

else
echo "failed to access /etc."
fi


echo
echo "checking directory that should not exist..."

if ls /
this-directory-does-not-exist... > /dev/null 2>&1; then
echo "directory exists."
else
echo "directory doesnot exists or can not be accessed."
fi
