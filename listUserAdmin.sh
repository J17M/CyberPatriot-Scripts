#!/bin/bash

echo "All Admin users"
mawk -F: '$1 == "sudo"' /etc/group > admin.txt

echo "use sudo userdel (username) sudo to remove admin"

echo "All Users in system"
mawk -F: '$3 > 999 && $3 < 65534 {print $1}' /etc/group > users.txt
echo "use sudo userdel username to remove user"

