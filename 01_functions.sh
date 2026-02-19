#!/bin/bash
# --- Functions ---
# A function is a block of reusable code.
# Think of it like a mini-script inside your script.

echo "--- Running Functions Demo ---"

# 1. Basic Function
# This function just prints a message.
say_hello() {
    echo "1. Hello from the basic function!"
}

# 2. Function with Arguments
# Functions use $1, $2, etc., for their own internal arguments.
greet_user() {
    local name=$1  # 'local' means the variable only exists inside this function.
    echo "2. Welcome, $name!"
}

# 3. Function with a Return Value (Exit Status)
# Functions return a status (0 for success, 1-255 for error).
check_directory() {
    local dir=$1
    if [ -d "$dir" ]; then
        echo "3. Checking for directory '$dir'..."
        return 0 # Success
    else
        return 1 # Error
    fi
}

# --- Calling the functions ---

# Call the basic function
say_hello

# Call the function with an argument
greet_user "Alice"

# Call the function and check its exit status
check_directory "/tmp"
if [ $? -eq 0 ]; then
    echo "   -> Directory found!"
else
    echo "   -> Directory not found."
fi

check_directory "/non_existent_dir"
if [ $? -eq 0 ]; then
    echo "   -> Directory found!"
else
    echo "   -> Directory not found."
fi
