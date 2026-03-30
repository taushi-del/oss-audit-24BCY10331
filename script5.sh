#!/bin/bash
# Script 5: Manifesto Generator
# Author: Taushif Khan

echo "Answer the questions:"
read -p "Tool you use: " TOOL
read -p "Freedom means: " FREEDOM
read -p "You will build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe open source is about $FREEDOM." > $OUTPUT
echo "Using tools like $TOOL, I will build $BUILD and share it freely." >> $OUTPUT
echo "Knowledge should be accessible to everyone." >> $OUTPUT

echo "Saved to $OUTPUT"
cat $OUTPUT
