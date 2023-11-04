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


## Define function to greet user:

    greet() {
        echo "Hello, Mr $1, very nice to meet you!"
    }
    greet "Naqeeb"

## Creating our first BASH script:
 
    #!/bin/bash
    
    # Display current directory
    echo "Current directory: $PWD"
    
    # Create a new directory
    echo "Creating a new directory..."
    mkdir my_directory
    echo "New directory created."
    
    # Change to the new directory
    echo "Changing to the new directory..."
    cd my_directory
    echo "Current directory: $PWD"
    
    # Create some files
    echo "Creating files..."
    touch file1.txt
    touch file2.txt
    echo "Files created."
    
    # List the files in the current directory
    echo "Files in the current directory:"
    ls
    
    # Move one level up
    echo "Moving one level up..."
    cd ..
    echo "Current directory: $PWD"
    
    # Remove the new directory and its contents
    echo "Removing the new directory..."
    rm -rf my_directory
    echo "Directory removed."
    
    # List the files in the current directory again
    echo "Files in the current directory:"
    ls

This is what the output lookds like:
![Images](https://github.com/naqeebghazi/darey.shellscripting/blob/main/images/Screenshot%202023-11-04%20at%2021.55.59.png?raw=true)

