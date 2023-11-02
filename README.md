# shellscripting
Aker Academy Project: Shell Scripting 

Bash is one of many shells one can interact with as shown below:

![shellTypes](https://github.com/naqeebghazi/darey.shellscripting/blob/main/images/typesofShells.png?raw=true)
Credit: 'Learning Linux Shell Scripting' by Ganesh Naik

Bash Provides control flow statements such as if-else, for-loops, while-loops and case statements to control the flow of execution in your scripts. These statements alow you to make deciions, iterate over lists and execute different commands based on conditions. 

## if-else statements

Example script to check if a number entered is positive, negative or zero.

    !/bin/bash

    read -p "Enter as number: " NUM

    if [ $NUM -gt 0 ]
        then 
            echo 

    
