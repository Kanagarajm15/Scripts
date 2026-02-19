#!/bin/bash
# --- Piping and Redirection ---
# These are fundamental concepts for chaining commands and handling I/O.

echo "--- Running Piping and Redirection Demo ---"
# Create a dummy file for examples
echo "one
two
three
four
five" > numbers.txt

echo
echo "--- Redirection ---"

# 1. '>' (Output Redirection - Overwrites)
# Takes the output of a command and writes it to a file. Overwrites the file if it exists.
echo "Hello, World!" > greeting.txt
echo "File 'greeting.txt' created/overwritten."

# 2. '>>' (Append Output Redirection)
# Adds the output to the end of a file without deleting its previous content.
echo "This is a second line." >> greeting.txt
echo "Appended a new line to 'greeting.txt'."
echo "Contents of greeting.txt:"
cat greeting.txt

# 3. '<' (Input Redirection)
# Takes a file and uses it as input for a command.
echo
echo "Counting lines in 'numbers.txt' using input redirection:"
wc -l < numbers.txt

# 4. '2>' (Error Redirection)
# Redirects only the error output (stderr).
ls /non_existent_directory 2> error.log
echo "Errors (if any) from the 'ls' command were saved to 'error.log'."
cat error.log

echo
echo "--- Piping ---"
# '|' (Pipe)
# Takes the standard output of the command on the left and "pipes" it
# to be the standard input of the command on the right.

echo "Finding lines containing 'o' in numbers.txt and counting them:"
cat numbers.txt | grep "o" | wc -l

echo
echo "--- Cleanup ---"
rm numbers.txt greeting.txt error.log
echo "Cleaned up dummy files."
