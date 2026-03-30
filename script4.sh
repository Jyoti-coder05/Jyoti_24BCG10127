#!/bin/bash
# Script 4: Log File Analyzer
# Author: JYOTI MUDALAGI | Reg No: 24BCG10127

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# -------- FILE CHECK --------
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found ❌"
    exit 1
fi

# -------- READ FILE --------
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times"

# -------- LAST MATCHES --------
echo ""
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
