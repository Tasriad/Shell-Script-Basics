#!/usr/bin/bash




# conditional statements (first way)
# more roust way (we can use it for file checking, string checking, etc.)
#------------------------------------warning: use spaces between square brackets and operators
#------------------------------------warning: end if statement with fi
result=10
if [ $result -gt 10 ]; then
    echo "Greater than 10"
elif [ $result -lt 10 ]; then
    echo "Less than 10"
else
    echo "Equal to 10"
fi    

# conditional statements (second way)
result2=10
if ((result2 > 10)); then
    echo "Greater than 10"
elif ((result2 < 10)); then
    echo "Less than 10"
else
    echo "Equal to 10"
fi

# conditional statements with logical operators
result3=5
if ((result3 > 10)) && ((result3 % 2 == 0)); then
    echo "Greater than 10 and even"
elif ((result3 < 10)) || ((result3 % 2 != 0)); then
    echo "Less than 10 or odd"
else
    echo "Equal to 10"
fi

# for loop (first way)
for i in {1..5}  # #inclusive
do
    echo "Number: $i"
done   

# for loop (second way)
for (( i=1; i<=5; i++ ))
do
    echo "Number: $i"
done

# while loop (first way)
result4=10
while [ $result4 -lt 15 ]
do
    echo "Number: $result4"
    ((result4++))
done

# while loop (second way)
result5=10
while ((result5 < 15))
do
    echo "Number: $result5"
    ((result5++))
done

# until loop
result6=10
until ((result6 > 15))
do
    echo "Number: $result6"
    ((result6++))
done

# case statement
#------------------------------------warning: end case statement with esac
com="begin"
case $com in
    "start"|"begin")
        echo "Starting..."
        ;;
    "stop")
        echo "Stopping..."
        ;;
    "restart")
        echo "Restarting..."
        ;;
    *)
        echo "Invalid option"
        ;;
esac

# break statement
for i in {1..5}
do
    if [ $i -eq 3 ]; then
        break
    fi
    echo "Number: $i"
done

# continue statement
for i in {1..5}
do
    if [ $i -eq 3 ]; then
        continue
    fi
    echo "Number: $i"
done

# select statement
#------------------------------------warning: end select statement with done
select option in "start" "stop" "restart" "exit"
do
    case $option in
        "start")
            echo "Starting..."
            ;;
        "stop")
            echo "Stopping..."
            ;;
        "restart")
            echo "Restarting..."
            ;;
        "exit")
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done


