# Ultimate Shell Scripting Guide

## 1. Introduction
**Shell Scripting** is writing a series of commands for the shell to execute. It automates repetitive tasks.

### The Shebang (`#!`)
Every script starts with a "shebang" line. It tells the system which interpreter to use.
```bash
#!/bin/bash
```

### Making Scripts Executable
Before running a script, you must give it execute permissions:
```bash
chmod +x script.sh
```
Run it with: `./script.sh`

---

## 2. Variables
Variables store data. By convention, uppercase is often used for constants/environment variables, lowercase for local variables.
**Note:** No spaces around the `=` sign.

```bash
#!/bin/bash
NAME="John"
AGE=30

# Access variables using $
echo "My name is $NAME and I am $AGE years old."
```

---

## 3. User Input
Use `read` to get input from the user.

```bash
echo "Enter your name:"
read username
echo "Hello, $username!"
```

---

## 4. Conditional Logic (If-Else)
Make decisions based on conditions.
Common checks:
- `-eq`: Equal (numbers)
- `-ne`: Not equal (numbers)
- `-gt`: Greater than
- `-lt`: Less than
- `==`: Equal (strings)
- `!=`: Not equal (strings)
- `-f`: File exists
- `-d`: Directory exists

```bash
#!/bin/bash
count=10

if [ $count -gt 5 ]; then
    echo "Count is greater than 5"
elif [ $count -eq 5 ]; then
    echo "Count is exactly 5"
else
    echo "Count is less than 5"
fi
```

---

## 5. Loops
Repeat commands multiple times.

### For Loop
Iterate over a list or range.
```bash
# Loop through numbers 1 to 5
for i in {1..5}; do
    echo "Number: $i"
done
```

### While Loop
Run while a condition is true.
```bash
count=1
while [ $count -le 3 ]; do
    echo "Count: $count"
    ((count++))
done
```

---

## 6. Arguments
Scripts can accept arguments passed from the command line.
- `$1`, `$2`: First and second arguments.
- `$0`: The name of the script itself.
- `$#`: Total number of arguments.
- `$@`: All arguments as a list.

**Example run:** `./script.sh apple banana`
```bash
echo "First fruit: $1"  # Output: apple
echo "Total fruits: $#" # Output: 2
```

---

## 7. Functions
Group commands into reusable blocks.

```bash
greet() {
    local name=$1 # 'local' keeps the variable inside the function
    echo "Hello, $name!"
}

greet "Alice"
greet "Bob"
```

---

## 8. Exit Status
Every command returns a status code (0-255).
- `0`: Success
- `Non-zero`: Error

You can check the status of the *last* command using `$?`.

```bash
ls /non_existent_folder
if [ $? -ne 0 ]; then
    echo "The command failed!"
fi
```

---

## 9. Command Substitution
Store the output of a command into a variable using `$(...)`.

```bash
current_date=$(date)
echo "Today is: $current_date"
```

---

## 10. Piping and Redirection
Connect commands and manage output.

- `|` (Pipe): Pass output of one command as input to another.
  ```bash
  cat file.txt | grep "search_term"
  ```
- `>` (Redirect): Write output to a file (overwrites).
  ```bash
  echo "Hello" > log.txt
  ```
- `>>` (Append): Add output to the end of a file.
  ```bash
  echo "Another line" >> log.txt
  ```
