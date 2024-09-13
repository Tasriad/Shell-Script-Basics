#!/usr/bin/bash


# function 
greet() {
    echo "Hello world"
}

greet

# function with arguments
greet2() {
    echo "Hello $1"
}

greet2 "Tias"

# function with return value
#--------------------------use local keyword to declare local variables for better readability
add() {
    local sum=$(($1+$2))
    echo $sum
    return 0
}
if [ $? -eq 0 ]; then
    echo "Function executed successfully"
else
    echo "Function failed"
fi
result=$(add 5 4)
echo "The sum is: $result"

# function with default arguments
sub() {
    local num1=${1:-4}
    local num2=${2:-2}
    local diff=$(($num1-$num2))
    echo $diff
}

result2=$(sub)
echo "The difference is: $result2"
