#!/bin/bash
# --- Secure and Advanced User Input ---
# Demonstrates reading user input without echoing it, and other 'read' options.

echo "--- Running Secure Input Demo ---"

# 1. Silent Input (-s)
# Useful for passwords or other sensitive information. The input is not displayed on the screen.
echo "1. Demonstrating silent input for a password:"
read -s -p "Enter your password: " user_password
echo # Add a newline because -s doesn't add one
echo "Password received (but not displayed): Your password is $user_password" # For demonstration, normally you wouldn't print it!

echo

# 2. Prompt with Input (-p)
# We've seen this before, but it's good to pair with other options.
echo "2. Demonstrating prompt with input:"
read -p "What is your favorite color? " fav_color
echo "Your favorite color is $fav_color."

echo

# 3. Timeout Input (-t)
# 'read' will wait for a specified number of seconds for input.
# If no input is given, it continues, and the variable will be empty.
echo "3. Demonstrating input with a 5-second timeout:"
read -t 5 -p "Enter something within 5 seconds: " timed_input
if [ -z "$timed_input" ]; then
    echo "No input received within 5 seconds."
else
    echo "You entered: $timed_input"
fi

echo

# 4. Number of Characters Input (-n)
# Reads only a specified number of characters.
echo "4. Demonstrating reading exactly 3 characters:"
read -n 3 -p "Enter 3 characters: " three_chars
echo # Newline
echo "You entered: $three_chars"
