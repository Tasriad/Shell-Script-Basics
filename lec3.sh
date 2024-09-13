#!/usr/bin/bash


# command line arguments
#------------------------------------warning: use $1, $2, $3, ... to access command line arguments
#------------------------------------warning: use $# to get the number of command line arguments
#------------------------------------warning: use $@ to get all command line arguments
#------------------------------------warning: use $* to get all command line arguments as a single string
#------------------------------------warning: use $0 to get the name of the script

if [ $# -eq 0 ]; then
    echo "No arguments provided"
else
    echo "The name of the script is: $0"
    echo "The number of arguments is: $#"
    echo "The arguments are: $@"
    echo "The arguments are: $*"
    for arg in $@
    do
        echo $arg
    done
    # if we use $* instead of $@, then the output will be a single string
fi