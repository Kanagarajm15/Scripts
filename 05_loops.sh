#!/bin/bash
# --- Loops ---
# Loops let you execute a command or block of code multiple times.
echo "--- Running Loops Demo ---"

# 1. 'for' Loop
echo "--- For Loop with a range ---"
for i in {1..5}; do
    echo "Number: $i"
done

# 2. 'while' Loop
echo "--- While Loop ---"
counter=1
while [ $counter -le 3 ]; do
    echo "While counter is at $counter"
    ((counter++))  # Increment the counter
done

# 3. 'until' Loop
echo "--- Until Loop ---"
counter=1
until [ $counter -gt 3 ]; do
    echo "Until counter is at $counter"
    ((counter++))
done

# 4. 'break' and 'continue'
echo "--- Loop with break and continue ---"
for i in {1..10}; do
    if [ $i -eq 4 ]; then
        echo "(Skipping 4 with 'continue')"
        continue
    fi
    if [ $i -eq 8 ]; then
        echo "(Stopping at 8 with 'break')"
        break
    fi
    echo "Processing number $i"
done
