#!/bin/bash
# If we do not add this line, then the commands will be run within the current shell; it may cause issues if we run another shell.
###########################
echo "hello $1!"
echo "hello $*!"
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
exit 0

