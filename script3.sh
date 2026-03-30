#!/bin/bash

#  Disk and Permission Auditor
#  Author : Jyoti Mudalagi
#  Reg No : 24BCG10127

# -------- DIRECTORIES TO CHECK --------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo ""
echo "=============================================="
echo "   Directory Audit Report"
echo "=============================================="
echo ""

# -------- DIRECTORY ANALYSIS --------
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        
        # Get directory size (suppress errors)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "Directory : $DIR"
        echo "Permissions: $PERMS"
        echo "Owner      : $OWNER"
        echo "Group      : $GROUP"
        echo "Size       : $SIZE"
        echo "----------------------------------------------"
    else
        echo "Directory : $DIR"
        echo "Status    : Not Found"
        echo "----------------------------------------------"
    fi
done

# -------- EXTRA: CHECK GIT CONFIG DIRECTORY --------
CONFIG_DIR="/etc/git"

echo ""
echo "Checking Git configuration directory..."
echo "----------------------------------------------"

if [ -d "$CONFIG_DIR" ]; then
    echo "Directory exists:"
    ls -ld "$CONFIG_DIR"
else
    echo "Git configuration directory not found"
fi

echo ""
echo "=============================================="
echo "Audit Completed"
echo "=============================================="
