#!/bin/bash
# --- Arrays ---
# Arrays store multiple values in a single variable.

echo "--- Running Arrays Demo ---"

# 1. Defining an Array
# Use parentheses () and separate items with spaces.
FRUITS=("Apple" "Banana" "Cherry" "Date")
echo "Array defined: FRUITS"

# 2. Accessing Elements
# Use ${array[index]}. Indexes start at 0.
echo "First fruit: ${FRUITS[0]}"
echo "Third fruit: ${FRUITS[2]}"

# 3. All Elements (@)
# Use ${array[@]} to get all elements.
echo "All fruits: ${FRUITS[@]}"

# 4. Array Length (#)
# Use ${#array[@]} to get the number of elements.
echo "Total number of fruits: ${#FRUITS[@]}"

# 5. Looping through an Array
echo "Looping through all fruits:"
for fruit in "${FRUITS[@]}"; do
    echo " - I like $fruit"
done
