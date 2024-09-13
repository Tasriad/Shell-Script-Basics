#!/usr/bin/bash




echo "Hello world"

#------------------- warning: do not use spaces between variable name and value

# variable declaration
name="Tias"
greetings="Hello, $name"

echo $greetings

num1=5
num2=4

#------------------warning: use $((expression)) to perform arithmetic operations

# Supports basic arithmetic operations: +, -, *, /, %.
# Supports increment (++) and decrement (--) operators.
# Allows bitwise operations like &, |, ^, <<, >>.

echo $((num1+num2))

# user input
#------------------------------------warning: press enter after giving each input

read num3
read num4

echo $((num3+num4))

#-----------------------------warning: give input in a single line space separated
read num5 num6

echo $((num5+num6))

# save expression in a variable
read num7
read num8
result=$((num7+num8))
echo "The sum is: $result"

# use of expr in string manipulation
expr length "hello"   # Outputs 5
expr substr "hello" 2 3   # Outputs "ell"
expr index "hello" "l"   # Outputs 3
expr match "hello" "h*"   # Outputs 1

# input with prompt
#------------------------------------warning: use -p flag to prompt the user for input
#------------------------------------warning: use -n flag to limit the number of characters read
#------------------------------------warning: use -s flag to hide the input
#------------------------------------warning: use -r flag to prevent backslashes from being interpreted
#------------------------------------warning: use -a flag to read into an array
#------------------------------------warning: use -t flag to set a timeout
#------------------------------------warning: use -d flag to set a delimiter
#------------------------------------warning: use -i flag to set an initial input
#------------------------------------warning: use -e flag to enable line editing
#------------------------------------warning: use -c flag to set the number of characters to read
#------------------------------------warning: use -l flag to convert input to lowercase
#------------------------------------warning: use -u flag to convert input to uppercase

read -p "Enter your name: " name


