#!/usr/bin/bash


# array
fruits=(apple banana kiwi)
echo ${fruits[0]}
echo ${fruits[@]}
# elements can be added to an array using the following syntax:
fruits[3]=orange
echo ${fruits[@]}
fruits+=("mango")
echo ${fruits[@]}
# elements can be removed from an array using the following syntax:
unset fruits[2]
echo ${fruits[@]}
# empty an array using the following syntax:
unset fruits
echo ${fruits[@]}

# iterate over an array using the following syntax:
a=(1 2 3 4 5)
for i in ${a[@]}
do
    echo $i
done

# associative array
declare -A fruits
fruits=([apple]='red' [banana]='yellow' [kiwi]='green')
for key in ${!fruits[@]}
do
    echo "The color of $key is ${fruits[$key]}"
done

# string manipulation
#------------------------------------warning: use ${#string} to get the length of a string
#------------------------------------warning: use ${string:position:length} to get a substring
#------------------------------------warning: use ${string#substring} to remove substring from the beginning
#------------------------------------warning: use ${string%substring} to remove substring from the end
#------------------------------------warning: use ${string/substring/replacement} to replace the first occurrence of substring
#------------------------------------warning: use ${string//substring/replacement} to replace all occurrences of substring

s="Hello, world"
echo ${#s}
echo ${s:7:5}
echo ${s#Hello}
echo ${s%world}
echo ${s/o/a}
echo ${s//o/a}

str="appa,mang,bana"
IFS=,
read -ra fruits <<< "$str"
for i in ${fruits[@]}
do
    echo $i
done

