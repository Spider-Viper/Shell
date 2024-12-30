#!/bin/bash
# If we do not add this line, then the commands will be run within the current shell; it may cause issues if we run another shell.
###########################
echo "hello $1!"
echo "hello $*!"
# $* 和 $@ 没有区别
# $* 和 $@ 被双引号包围时：
# $*: 会将全部参数视为一个整体
# $@: 仍然将每个参数视为一个独立个体
# 利用For Loop 可以看出其差别
###########################
echo 'hello $1!'
echo "$USER earns $4"
echo "$USER earns \$4"
echo '$USER earns $4'
###########################
echo "you are using $0"
echo "you are using $(basename $0)"
# *******************************************************************************************
# The $() syntax is used to evaluate the output of the inner command.
# We first run basename $0 and feed the result into an unnamed variable represented by the $.
# *******************************************************************************************
echo "you are using `basename $0`"
echo "hello $*"
###########################
name="Mokhtar"
age=35
total=16.5
echo $name
echo $age
echo $total
# ************************************************************************************************************
# There are no spaces between the variable name and the equals sign, or between the equals sign and the value
# ************************************************************************************************************
# ******************
# declare an array
# ******************
myarr=(one two three four five)
echo ${myarr}
echo ${myarr[1]}
echo ${myarr[*]}
# ******************
# remove a specific element or all elements
# ******************
unset myarr[1]
echo ${myarr[*]}
unset myarr
echo ${myarr[*]}
# *******************
# printenv
printenv HOME
# *******************
# variable scope
# export variable using export command
# Keep in mind that the second process only makes a copy of the variable and never touches the original one
# *******************
# A command substitution means storing the output of a command execution in a variable
# There are two ways to perform a command substitution:
# Using the backtick character `
# Using the dollar sign format, like this $()
cur_dir=`pwd`
echo $cur_dir
echo $(pwd)
# *******************

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

