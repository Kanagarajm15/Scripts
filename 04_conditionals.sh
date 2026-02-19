#!/bin/bash
# --- Conditional Logic (If, Elif, Else) ---
# Conditionals allow your script to make decisions.

echo "--- Running Conditionals Demo ---"
read -p "Enter a number to test: " number

# 1. 'if-elif-else' Statement
if [ -z "$number" ]; then
    echo "You didn't enter anything!"
elif [ "$number" -lt 0 ]; then
    echo "The number is negative."
elif [ "$number" -eq 0 ]; then
    echo "The number is zero."
elif [ "$number" -gt 100 ]; then
    echo "The number is large (greater than 100)."
else
    echo "The number is a positive number between 1 and 100."
fi

# 2. String Comparison
read -p "Type 'yes' or 'no': " response
if [ "$response" == "yes" ]; then
    echo "You said yes!"
else
    echo "You didn't say yes."
fi

# 3. File Check
if [ -f "04_conditionals.sh" ]; then
    echo "File check: This script file exists."
else
    echo "File check: This script file does not exist."
fi
