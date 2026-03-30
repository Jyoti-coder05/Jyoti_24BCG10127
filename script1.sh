#!/bin/bash
# Script 1: System Identity Report
# Author: RIYA AGRAWAL | Reg No: 24BCG10082

# -------- VARIABLES --------
STUDENT_NAME="RIYA AGRAWAL"
SOFTWARE_CHOICE="Git"

# -------- SYSTEM INFO --------
KERNEL=$(uname -r)                     # Kernel version
USER_NAME=$(whoami)                   # Current user
UPTIME=$(uptime -p)                   # System uptime
DATE=$(date)                          # Current date
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

# -------- OUTPUT --------
echo "=================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "=================================="
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Date    : $DATE"
echo "Distro  : $DISTRO"
echo "License : GNU General Public License (GPL)"
