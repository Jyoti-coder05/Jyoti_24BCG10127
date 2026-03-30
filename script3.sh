#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author:JYOTI MUDALAGI | Reg No: 24BCG10127

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# -------- LOOP --------
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Permissions + owner
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# -------- EXTRA: CHECK CONFIG --------
CONFIG_DIR="/etc/git"

echo ""
echo "Checking Git config directory..."

if [ -d "$CONFIG_DIR" ]; then
    ls -ld $CONFIG_DIR
else
    echo "Git config directory not found"
fi
