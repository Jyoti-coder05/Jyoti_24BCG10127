#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: RIYA AGRAWAL | Reg No: 24BCG10082

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "--------------------------"

# -------- CHECK INSTALLATION --------
if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed ✅"
    
    # Show details
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed ❌"
fi

# -------- CASE STATEMENT --------
case $PACKAGE in
    git)
        echo "Git: Distributed version control system built for open collaboration"
        ;;
    firefox)
        echo "Firefox: Open-source browser promoting privacy and open web"
        ;;
    vlc)
        echo "VLC: Free media player that plays almost any format"
        ;;
    apache2)
        echo "Apache: One of the most widely used web servers"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
