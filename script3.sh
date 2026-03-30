#!/bin/bash
# Script 3: Disk Auditor
# Author: Taushif Khan

DIRS=("/etc" "/var/log" "/Users" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
 PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
 SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
 echo "$DIR => Permissions: $PERMS | Size: $SIZE"
 else
 echo "$DIR does not exist"
 fi
done

if [ -f ~/.gitconfig ]; then
 echo "Git config exists:"
 ls -l ~/.gitconfig
else
 echo "Git config not found"
fi
