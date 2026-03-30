#  System Identity Report
#  Author : Jyoti Mudalagi
#  Reg No : 24BCG10127

#  VARIABLES
STUDENT_NAME="Jyoti Mudalagi"
SOFTWARE_CHOICE="Git"

# SYSTEM INFO 
KERNEL=$(uname -r)                     
USER_NAME=$(whoami)                   
UPTIME=$(uptime -p)                   
DATE=$(date)                          
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

-
echo ""
echo "=============================================="
echo "   Open Source System Audit Report"
echo "=============================================="
echo ""

echo "Hello, $JYOTI_MUDALAGI"
echo "Here is a summary of your system:"
echo ""

echo "Operating System   : $DISTRO"
echo "Kernel Version     : $KERNEL"
echo "Logged-in User     : $Jyoti_Mudalagi"
echo "System Uptime      : $UPTIME"
echo "Current Date & Time: $DATE"
echo ""

echo "Preferred Tool     : $SOFTWARE_CHOICE"
echo "License            : GNU General Public License (GPL)"
echo ""

echo "=============================================="
echo "Report Generated Successfully"
echo "=============================================="
