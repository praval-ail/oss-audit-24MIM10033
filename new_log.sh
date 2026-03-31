#!/bin/bash
# Script 4: Log File Analyzer


LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# TODO: do-while style retry if the file is missing or empty
# ---------------------------------------------------------
# We use 'while true' to simulate a do-while loop. It will keep 
# asking until a valid, non-empty file is provided.
while true; do
    if [ ! -f "$LOGFILE" ]; then # -f checks if the path actually exists and if its a normal file
        echo "Error: File '$LOGFILE' not found."
        read -p "Please enter a valid log file path: " LOGFILE
    elif [ ! -s "$LOGFILE" ]; then # The -s checks if the file exists andif it has a size greater than zero (not empty)
        echo "Error: File '$LOGFILE' is empty."
        read -p "Please enter a non-empty log file path: " LOGFILE
    else
        # If it exists and isn't empty, we apply the break condition to continue running the script normally
        break 
    fi
done

# looped used to count occurences
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# printing the last 5 as stated
if [ "$COUNT" -gt 0 ]; then
    echo "---------------------------------------------------"
    echo "Last 5 occurrences of '$KEYWORD':"
    # grep -i makes it case-insensitive to match the logic above
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
