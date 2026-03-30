#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: JYOTI MUDALAGI | Reg No: 24BCG10127

echo "Answer the following questions:"
echo ""

# -------- INPUT --------
read -p "1. Tool you use daily: " TOOL
read -p "2. Meaning of freedom: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_riya.txt"

# -------- CREATE FILE --------
echo "On $DATE, I believe open source means $FREEDOM." > $OUTPUT
echo "I regularly use $TOOL, which shows power of community." >> $OUTPUT
echo "In future, I want to build $BUILD and share it freely." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT ✅"
cat $OUTPUT
