# shellscripting
Aker Academy Project: Shell Scripting 

Bash is one of many shells one can interact with as shown below:



![shellTypes](https://github.com/naqeebghazi/darey.shellscripting/blob/main/images/typesofShells.png?raw=true)
Credit: 'Learning Linux Shell Scripting' by Ganesh Naik

Bash Provides control flow statements such as if-else, for-loops, while-loops and case statements to control the flow of execution in your scripts. These statements alow you to make deciions, iterate over lists and execute different commands based on conditions. 

## if-else

Example script to check if a number entered is positive, negative or zero.

    

    read -p "Enter as number: " NUM

    if [ $NUM -gt 0 ]
    then 
        echo "The number $NUM is greater than 0, a positive number"
    elif [ $NUM -lt 0 ]
    then
        echo "The number $NUM is less than 0, a negative number"
    elif [ $NUM -eq 0 ]
    then
        echo "The number $NUM is equal to 0"
    fi

## for-loop

Example for-loop to rename files:

    #!/bin/bash

    FILES=$(ls *.txt)
    APPEND="new"   # This renames each txt file by appending the word 'new' to it
    
    for FILE in $FILES
    do
        echo "Renaming $FILE to new-$FILE"  # This prints out the relevant message
        mv $FILE $APPEND-$FILE
    done

Example to print numbers from 1 to 10:

    #!/bin/bash

    for (( i=1; 1<=10; i++))
    do
        echo $i
    done

## Command substitution

This allows you to capture the output of a command and use it as a value within your script. You can use the backtip or the $() syntax. 

    #!/bin/bash

    current_date=$(date +%d/%m/%Y)
    echo "Today's date is $current_date"

OR

    #!/bin/bash

    current_date=`date +%d/%m/%Y`
    echo "Today's date is $current_date"


## Input/Output

Allows you to handle input/output i.e. accept user input and output related text to the console. 

    !/bin/bash

    echo "Welcome to Linux"

    read -p "Enter your name please: " NAME


    if statement
    if [ "$NAME" == "John" ]
    then 
        echo "Have a graet day $NAME!"
    fi

