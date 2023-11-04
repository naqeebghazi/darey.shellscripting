#!/bin/bash

# echo "Welcome to Linux"

# read -p "Enter your name please: " NAME


# if statement
# if [ "$NAME" == "Umar" ]
# then 
#     echo "Welcome to Al-Quds yaa $NAME!"
# fi

# ##############################################################

# if-else statement
# if [ "$NAME" == "Musa" ]
# then
#     echo "Assalaamu alaykum "$NAME""
# else
#     echo "User not authorised"
# fi

# ##############################################################

# else-if (aka elif) - example 1
# if [ "$NAME" == "Musa" ]
# then
#     echo "Assalaamu alaykum "$NAME""
# elif [ "$NAME" == "Umar" ]
# then
#     echo "Your name is Umar" 
# else
#     echo "User not authorised"
# fi

# else-if (aka elif) - example 2
# if [ "$NAME" == "Musa" ]
# then
#     echo "Welcome home "$NAME" "
# elif [ "$NAME" == "Jack" ]
# then
#     echo "Monkeys are all yours "$NAME" "
# elif [ "$NAME" == "Umar" ]
# then
#     echo "Ok fine you can login brother "$NAME" "
# else
#     echo "User not authorised as "$NAME" is not in our database"
# fi

# ##############################################################

# Comparison

# NUM1=1100
# NUM2=200
# NUM3=25

# -eq
# -ne
# -gt
# -ge
# -lt
# -le

# if [ "$NUM1" -lt "$NUM2" ]
# then
#     echo ""$NUM1" is less than "$NUM2" "
# # else
# #     echo ""$NUM1" is greater than "$NUM2" "
# elif [ "$NUM1" -gt "$NUM2" ]
# then
#     echo ""$NUM1" is greater than "$NUM2" "
# else
#     echo ""$NUM1" is not greater than "$NUM2" "
# fi

# ##############################################################


# File Conditions

# FILE="monkey.txt"

# if [ -f "$FILE" ]
# then
#     echo "$FILE does indeed exist as a file."
# else
#     echo "$FILE does not exist"
# fi


# -d file     True if the file is a directory
# -e file     True if the file exists ( -f is typically used instead of this as -e is not thath portable)
# -f file     True if the provided string is a file
# -g file     True if the group id is set on a file
# -r file     True if the file is readable
# -s file     True if the file has a non-zero size
# -u          True if the user id is set on a file
# -w          True if the file is writable
# -x          True if the file is executable 

# ##############################################################


# CASE STATEMENT

# read -p "Are you 21 or over? Y/N " ANSWER

# case "$ANSWER" in
#     [yY] | [yY][eE][sS])
#         echo "You can drive a car :)"
#         ;;
#     [nN] | [nN][oO])
#         echo "Sorry, you cannot drive the car."
#         ;;
#     *)
#         echo "Invalid response. Please enter yes or no."
#         ;;
# esac


# ##############################################################

# SIMPLE LOOP

# NAMES="Jo Umar Mike Nabil"
# for NAME in $NAMES
# do 
# echo "Hello, your name is $NAME"
# done

# ##############################################################


# FOR LOOP TO RENAME FILES

# FILES=$(ls *.txt)
# APPEND="new"   # This renames each txt file by appending the word 'new' to it
#     for FILE in $FILES
#     do  # For each file (FILE) in the files variable (FILES)
#         echo "Renaming $FILE to new-$FILE"  # This prints out the relevant message
#         mv $FILE $APPEND-$FILE
#     done


# Print numbers from 1 to 10:

# for (( i=1; i<=10; i++))
#     do
#         echo $i
#     done




# ##############################################################


# WHILE LOOP -RED THROUGH A FILE LINE BY LINE

# LINE=1
# while read -r CURRENT_LINE
#     do
#         echo "$LINE: $CURRENT_LINE" # $CURRENT_LINE represents the text of the line. 
#         ((LINE++))
#     done < "./rondo.txt"


# ##############################################################

# # FUNCTION

# function sayHELLO () {
#     echo "Hello Mr Windows"
# }
# sayHELLO

# ##############################################################

# FUNCTION WITH PARAMETERS

# function greet() {
#     echo "Hello, I am $1 and I am $2"
# }
# greet "Mark" "37"   # This calls the function and states the param of $1 and $2 in order. 

# ##############################################################

# CREATE FOLDER + WRITE TO A FILE

# mkdir hello
# touch "hello/juice.txt"
# echo "Hello world mr musa" >> "hello/juice.txt"
# echo "File juice.txt created"

# ##############################################################


# read -p "Enter as number: " NUM

# if [ $NUM -gt 0 ]
# then 
#     echo "The number $NUM is greater than 0, a positive number"
# elif [ $NUM -lt 0 ]
# then
#     echo "The number $NUM is less than 0, a negative number"
# elif [ $NUM -eq 0 ]
# then
#     echo "The number $NUM is equal to 0"
# fi

# ##############################################################

# COMMAND SUB

# Define function to greet user:

# greet() {
#     echo "Hello, Mr $1, very nice to meet you!"
# }
# greet "Naqeeb"

# current_date=$(date +%d/%m/%Y)
# echo "Today's date is $current_date"

# current_date=`date +%d/%m/%Y`
# echo "Today's date is $current_date"

# echo "Enter your name"
# read name

# echo "hello world" > index.txt

# if [ -f "index.txt" ]
# then
#     echo "File index.txt exists"
# else
#     echo "No file exixts with that name"
# fi

# echo "hello world" | grep "pattern"

# echo "pattern in pattern of lots of sqaures" > index.txt


# ##############################################################

#This creates a directory with two files in it then removes them while echoing every step of the script process

# # Display current directory
# echo "Current directory: $PWD"

# # Create a new directory
# echo "Creating a new directory..."
# mkdir my_directory
# echo "New directory created."

# # Change to the new directory
# echo "Changing to the new directory..."
# cd my_directory
# echo "Current directory: $PWD"

# # Create some files
# echo "Creating files..."
# touch file1.txt
# touch file2.txt
# echo "Files created."

# # List the files in the current directory
# echo "Files in the current directory:"
# ls

# # Move one level up
# echo "Moving one level up..."
# cd ..
# echo "Current directory: $PWD"

# # Remove the new directory and its contents
# echo "Removing the new directory..."
# rm -rf my_directory
# echo "Directory removed."

# # List the files in the current directory again
# echo "Files in the current directory:"
# ls


# ##############################################################

# File operations and sorting

# Create three files
# echo "Creating files..."
# echo "This is file3." > file3.txt
# echo "This is file1." > file1.txt
# echo "This is file2." > file2.txt
# echo "Files created."

# # Display the files in their current order
# echo "Files in their current order:"
# ls

# # Sort the files alphabetically
# echo "Sorting files alphabetically..."
# ls | sort > sorted_files.txt
# echo "Files sorted."

# # Display the sorted files
# echo "Sorted files:"
# cat sorted_files.txt

# # Remove the original files
# echo "Removing original files..."
# rm file1.txt file2.txt file3.txt
# echo "Original files removed."

# # Rename the sorted file to a more descriptive name
# echo "Renaming sorted file..."
# mv sorted_files.txt sorted_files_sorted_alphabetically.txt
# echo "File renamed."

# # Display the final sorted file
# echo "Final sorted file:"
# cat sorted_files_sorted_alphabetically.txt


# ##############################################################

# Working with numbers

# # Define two variables with numeric values
# num1=99
# num2=66

# # Perform basic arithmetic operations
# sum=$((num1 + num2))
# difference=$((num1 - num2))
# product=$((num1 * num2))
# quotient=$((num1 / num2))
# remainder=$((num1 % num2))

# # Display the results
# echo "Number 1: $num1"
# echo "Number 2: $num2"
# echo "Sum: $sum"
# echo "Difference: $difference"
# echo "Product: $product"
# echo "Quotient: $quotient"
# echo "Remainder: $remainder"

# # Perform some more complex calculations
# power_of_2=$((num1 ** 2))
# square_root=$(awk "BEGIN{ sqrt=$num2; print sqrt }")

# # Display the results
# echo "Number 1 raised to the power of 2: $power_of_2"
# echo "Square root of number 2: $square_root"


# # ##############################################################

# File backup

# Make backup directory
mkdir /Users/nghazi/DevOps/darey.io/darey.shellscripting/shell_BACKUP

# Define the source directory and backup directory
source_dir="/Users/nghazi/DevOps/darey.io/darey.shellscripting/"
backup_dir="/Users/nghazi/DevOps/darey.io/darey.shellscripting/shell_BACKUP"

# Create a timestamp with the current date and time
timestamp=$(date +"%d%m%Y%H%M%S")

# Create a backup directory with the timestamp
backup_dir_with_timestamp="$backup_dir/backup_$timestamp"

# Create the backup directory
mkdir -p "$backup_dir_with_timestamp"

# Copy all files from the source directory to the backup directory
cp -r "$source_dir"/* "$backup_dir_with_timestamp"

# Display a message indicating the backup process is complete
echo "Backup completed. Files copied to: $backup_dir_with_timestamp"
