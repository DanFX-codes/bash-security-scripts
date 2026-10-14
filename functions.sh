 #!/bin/bash

check_file() {
file="$1"

if [ -f "$file" ]; then
echo "$file exists and is a regular file"
else 
echo "$file does not exist or is not a regular file."
fi
}

check_file "/etc/passwd"
check_file "/etc/hostname"
check_file "/does-not-exist"

