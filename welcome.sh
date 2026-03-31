#!/bin/bash

# 1. Gather System Information
# --------------------------
# Get Distribution Name (graceful fallback if os-release is missing)
if [ -f /etc/os-release ]; then
    source /etc/os-release
    DISTRO_NAME=$PRETTY_NAME
else
    DISTRO_NAME=$(uname -s)
fi
KERNEL_VERSION=$(uname -r)
CURRENT_USER=$(whoami)
HOME_DIR=$HOME
SYSTEM_UPTIME=$(uptime -p ) # Removes "up " for cleaner grammar
CURRENT_DATE=$(date +"%A, %B %d, %Y, %r")
STUDENT_NAME="Gopu Praval Reddy"
SOFTWARE_CHOICE="Linux kernel"

# 3. Display the Welcome Screen
# --------------------------
echo -e "============================================================="
echo -e "   Open Source Audit - $STUDENT_NAME"
echo -e "   $Welcome to your Linux System"
echo -e "============================================================="
echo ""
echo -e "  $OS Distribution :  $DISTRO_NAME"
echo -e "  $Kernel Version  :  $KERNEL_VERSION"
echo ""
echo -e "  User : $CURRENT_USER"
echo -e "  System Uptime   :  $SYSTEM_UPTIME"
echo -e "  Current Time    :  $CURRENT_DATE"
echo ""
echo -e "============================================================="
echo -e "  License Information:"
echo -e "  This system is built on the Linux kernel, which is licensed"
echo -e "  under the GNU General Public License (GPL)."
echo -e "============================================================="
echo ""
