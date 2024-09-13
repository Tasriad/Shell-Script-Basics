#!/usr/bin/bash


# file handling
#------------------------------------warning: use -e to check if a file exists
#------------------------------------warning: use -f to check if a file exists and is a regular file
#------------------------------------warning: use -d to check if a file exists and is a directory
#------------------------------------warning: use -r to check if a file exists and is readable
#------------------------------------warning: use -w to check if a file exists and is writable
#------------------------------------warning: use -x to check if a file exists and is executable
#------------------------------------warning: use -s to check if a file exists and is not empty

if [ -e sample.txt ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

# file redirection
#------------------------------------warning: use > to redirect output to a file
#------------------------------------warning: use >> to append output to a file
#------------------------------------warning: use < to redirect input from a file
#------------------------------------warning: use 2> to redirect error output to a file
#------------------------------------warning: use 2>> to append error output to a file
#------------------------------------warning: use &> to redirect both output and error output to a file
#------------------------------------warning: use | to pipe output to another command

# copy file to file
cat sample.txt > output.txt

# file to console
cat output.txt

# append file to file
cat sample.txt >> output.txt

# console to file
# warning: this will overwrite the file
echo "Hello world" > output.txt 

# console to file
# warning: this will append to the file
echo "Hello world" >> output.txt

# file to variable
content=$(<output.txt)
echo $content

# variable to file
# warning: this will overwrite the file
echo $content > output.txt

# variable to file
# warning: this will append to the file
echo $content >> output.txt

# combine multiple files with paste
paste -d, output2.txt output.txt > combined.txt


# mapfile
#------------------------------------warning: use mapfile to read lines from a file into an array
#------------------------------------warning: use -t to remove trailing newline characters
#------------------------------------warning: use -n to read a specific number of lines
#------------------------------------warning: use -s to skip a specific number of lines
mapfile -t lines < output.txt
for line in ${lines[@]}
do
    echo $line
done

# readarray
readarray -t lines < output.txt
for line in ${lines[@]}
do
    echo $line
done

# read files from a directory
#------------------------------------warning: use * to read all files in a directory
#------------------------------------warning: use ? to read files with a specific extension
#------------------------------------warning: use [] to read files with specific characters
#------------------------------------warning: use {} to read files with specific names
for file in folder/*
do
    echo $file
done

# make a directory
mkdir folder
# create a file in directory
touch folder/new.txt
