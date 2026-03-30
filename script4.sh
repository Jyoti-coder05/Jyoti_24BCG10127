#!/bin/bash
#  Log File Analyzer
#  Author : Jyoti Mudalagi
#  Reg No : 24BCG10127

# -------- INPUT PARAMETERS --------
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo ""
echo "=============================================="
echo "   Log File Analysis Report"
echo "=============================================="
echo ""

# -------- FILE CHECK --------
if [ ! -f "$LOGFILE" ]; then
    echo "Error: Specified file not found"
    exit 1
fi

echo "Analyzing file : $LOGFILE"
echo "Search keyword : $KEYWORD"
echo "----------------------------------------------"

# -------- READ FILE AND COUNT MATCHES --------
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Total occurrences of keyword '$KEYWORD' : $COUNT"

# -------- DISPLAY LAST MATCHES --------
echo ""
echo "Last 5 matching entries:"
echo "----------------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "=============================================="
echo "Analysis Completed"
echo "=============================================="
