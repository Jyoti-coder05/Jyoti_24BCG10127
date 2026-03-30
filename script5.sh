#!/bin/bash
#  Open Source Manifesto Generator
#  Author : Jyoti Mudalagi
#  Reg No : 24BCG10127

echo ""
echo "=============================================="
echo "   Open Source Manifesto Generator"
echo "=============================================="
echo ""

echo "Please answer the following questions:"
echo ""
read -p "1. Which tool do you use daily? : " TOOL
read -p "2. What does 'freedom' mean to you? : " FREEDOM
read -p "3. What do you want to build in the future? : " BUILD


DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_jyoti.txt"


echo "On $DATE, I believe open source means $FREEDOM." > "$OUTPUT"
echo "I regularly use $TOOL, which reflects the strength of community-driven development." >> "$OUTPUT"
echo "In the future, I aim to build $BUILD and share it openly with others." >> "$OUTPUT"


echo ""
echo "Manifesto successfully created and saved to: $OUTPUT"
echo ""
echo "Generated Manifesto:"
echo "----------------------------------------------"
cat "$OUTPUT"
echo "----------------------------------------------"
