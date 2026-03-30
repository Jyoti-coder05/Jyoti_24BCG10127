#!/bin/bash
#  FOSS Package Inspector
#  Author : Jyoti Mudalagi
#  Reg No : 24BCG10127


PACKAGE="git"

echo ""
echo "=============================================="
echo "   FOSS Package Inspection Report"
echo "=============================================="
echo ""

echo "Checking details for package: $PACKAGE"
echo "----------------------------------------------"


if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "Status : Installed"
    echo ""

    echo "Package Information:"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "Status : Not Installed"
fi

echo ""


echo "Package Overview:"
case $PACKAGE in
    git)
        echo "Git is a distributed version control system designed for speed and collaboration."
        ;;
    firefox)
        echo "Firefox is an open-source web browser focused on privacy and performance."
        ;;
    vlc)
        echo "VLC is a free and open-source media player supporting multiple formats."
        ;;
    apache2)
        echo "Apache is a widely used open-source web server software."
        ;;
    *)
        echo "No description available for the selected package."
        ;;
esac

echo ""
echo "=============================================="
echo "Inspection Completed"
echo "=============================================="
