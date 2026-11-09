#!/usr/bin/env bash

# Buggy shell script for testing editor diagnostics and shellcheck.
# Run with: bash buggy_demo.sh

set -u

echo "Starting buggy shell demo"

NAME="Rohan"
echo "Hello, $NMAE"                 # BUG 1: misspelled variable (unset variable)

if [ "$NAME" = "Rohan" ]          # BUG 2: missing 'then'
    echo "Welcome!"
fi

for FILE in *.java; do
    echo "Checking $FILE"
    if [ -f "$FILE" ]; then
        cat "$FILE"
    else
        echo "No Java files found"
    fi
done

# BUG 3: command name is misspelled; should be 'grep'
grpe "class" *.java

# BUG 4: invalid arithmetic expression
COUNT=$((5 + ))

echo "Count: $COUNT"
