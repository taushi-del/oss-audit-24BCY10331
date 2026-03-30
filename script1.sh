#!/bin/bash
# Script 1: System Identity Report 
# Author: Taushif Khan

#variables:
STUDENT_NAME="Taushif Khan"
REGISTRATION_NO="24BCY10331"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME

# Correct OS info
OS_NAME=$(sw_vers -productName)
OS_VERSION=$(sw_vers -productVersion)

# Clean uptime
UPTIME=$(uptime | sed 's/.*up \([^,]*\), .*/\1/')

DATE=$(date)

echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "STUDENT  : $STUDENT_NAME"
echo "Reg_no   : $REGISTRATION_NO" 
echo "Software : $SOFTWARE_CHOICE"
echo "OS       : $OS_NAME $OS_VERSION"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "License  : GNU GPL (concept from Linux)"
