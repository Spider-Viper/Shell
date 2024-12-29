#!/bin/bash
#read -p "Enter your name: " name
#echo "Hello ${name}"
# ***************************************
# Limiting the number of entered characters
#read -p "May I ask your name: " name
#echo "Hello ${name}"
#read -n1 -p "Press any key to exit"
#echo
# ***************************************
# Controlling the visibility of the entered text
# for example : if we type the name, we get to see the entered text before we hit Enter
# if we are entering sensitive data, such as a PIN or a password, we should hide the text
#read -p "May I ask your name: " name
#echo "Hello ${name}"
#read -sn5 -p "Press any key to exit "
#echo
# ***************************************
# passing options
#while [ -n "$1" ]
#do
#    case "$1" in
#    -a) echo "-a option used" ;;
#    -b) echo "-b option used" ;;
#    -c) echo "-c option used" ;;
#    *) echo "option $1 not an option" ;;
#    esac
#    shift
#done
# ***************************************
#while [ -n "$1" ]
#do
#    case "$1" in
#    -a) echo "-a option found" ;;
#    -b) echo "-b option found" ;;
#    -c) echo "-c option found" ;;
#    --) shift
#    break;;
#    *) echo "option $1 not an option" ;;
#    esac
#    shift
#done
## iteration over options is finished here.
# iteration over parameters started.
#num=1
#for param in $@
#do
#    echo "#${num}: ${param}"
#    num=$((${num}+1))
#done
# -a : List all items
# -c : Get a count of all items
# -d : Output directory
# -e : Expand items
# -f : Specify a file
# -h : Show the help page
# -i : Ignore the character case
# -l : List a text
# -o : Send output to a file
# -q : Keep silent;don't ask the user
# -r : Process someting recursively
# -s : Use stealth mode
# -v : Use verbose mode
# -x : Specify an executable
# -y : Accept without prompting me


# ********************************************************
# Script to prompt to back up files and location
# The files will be search on from the user's home
# directory and can only be backed up to a directory
# within $HOME
# ********************************************************
#read -p "Which file types do you want to backup " file_suffix
#read -p "Which directory do you want to backup to " dir_name
## The next lines creates the directory if it does not exist
#test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name
#find $HOME -path $HOME/$dir_name -prune -o -name "*$file_suffix" -exec cp {} $HOME/$dir_name/ \;


# **************************************************************
# Prompt for the server address and username, and pass them through to the SSH client
# **************************************************************
#read -p "Which server do you want to connect to: " server_name
#read -p "Which username do you want to use: " user_name
#ssh ${user_name}@${server_name}



# ************************
# reading files
while read line
do
    echo $line
done < file.txt
exit 0

