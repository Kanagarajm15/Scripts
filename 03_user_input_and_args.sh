#!/bin/bash
# --- User Input and Arguments ---
# Scripts often need to interact with the user or accept data when they start.

echo "--- Running User Input and Arguments Demo ---"

# --- 1. User Input (read command) ---
echo
echo "--- User Input Section ---"
read -p "What is your name? " user_name
echo "Hello, $user_name!"
echo

# --- 2. Command-Line Arguments ---
echo "--- Command-Line Arguments Section ---"
# These are values passed to the script when you run it.
# Example: ./03_user_input_and_args.sh apple banana

echo "Script name: $0"
echo "First argument passed: $1"
echo "Second argument passed: $2"
echo "Total number of arguments passed: $#"
echo "All arguments listed:"
for arg in "$@"; do
    echo " - $arg"
done
echo
echo "Try running this script with arguments, like: ./03_user_input_and_args.sh hello world 123"
