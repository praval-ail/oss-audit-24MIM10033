#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp") # this is the given list of important directories

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Getting permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # coverting the size to a human-readable format and also suppressing permission denied errors
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# ---------------------------------------------------------
# Specific Software Config Directory Audit
# ---------------------------------------------------------
MY_SOFTWARE="MySQL"
# I chose MySQL even though my chosen software is the linux kernel as it dosent just sit in a single folder
#  for me to check if its present and the kernel has root authority which is the highest authority as it works one to one with the hardware
CONFIG_DIR="/etc/mysql"

echo ""
echo "$MY_SOFTWARE Config Audit"
echo "========================="

if [ -d "$CONFIG_DIR" ]; then
    CONFIG_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    CONFIG_SIZE=$(du -sh "$CONFIG_DIR" 2>/dev/null | cut -f1)
    echo "$CONFIG_DIR => Permissions: $CONFIG_PERMS | Size: $CONFIG_SIZE"
else
    echo "$CONFIG_DIR (for $MY_SOFTWARE) does not exist on this system."
fi
