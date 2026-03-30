#!/bin/bash
# Script 2: Package Inspector (Mac Version)
# Author: Taushif Khan

PACKAGE="git"

if command -v $PACKAGE &> /dev/null; then
 echo "$PACKAGE is installed."
 $PACKAGE --version
else
 echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
 git) echo "Git: distributed version control system" ;;
 apache) echo "Apache: web server" ;;
 mysql) echo "MySQL: database system" ;;
 firefox) echo "Firefox: browser" ;;
 *) echo "Unknown package" ;;
esac
