#!/bin/bash

# *************************************************************************************************************************
# variables

# NOT GOOD >>
# **cp /my/location/from /my/location/to
# **cp /my/location/form/hear /mylocation/to/there

# BETTER
# **MY_LOCATION_FROM=/my/location/from
# **MY_LOCATION_TO=/my/location/to
# **cp $MY_LOCATION_FROM $MY_LOCATION_TO
# **cp "$MY_LOCATION_FROM/hear" "$MY_LOCATION_TO/there"
# *************************************************************************************************************************
# Positional Arguments
# command arg arg arg arg ...
#    0     1   2   3   4  ...
# *************************************************************************************************************************
# Piping
# *************************************************************************************************************************
# Output redirection
# >
# >>
# <
# **
# ** wc -w < filt.txt
# **
# <<
# **
# ** cat << EOF
# EOF
# <<<
# ** wc -w <<< "string1 string2 string3"
# ** wc -w <<< "hello world! "
# *************************************************************************************************************************
# Test Operators
# [ xxx ]
# [ 1 = 0 ] NOT: [ 1 == 0 ]
# [ 1 -eq 1 ]
# *************************************************************************************************************************
# If / Elif / Else
# ${1,,} : convert the first argument passed to the script to lowercase
#          ${1} : represents the first positional argument passed to the script
#          ${...} : the syntax for parameter expansion in bash
#          ,, : a string manipulation operator that converts the string to lowercapse
# **if [ ${1,,} = herbert ]; then
# **	echo "oh, you are boss here. Welcome!"
# **elif [ ${1,,} = help ]; then
# **	echo "Just enter your username, duh!"
# **else
# **	echo "I don't know who you are. But you're not the boss of me!"
# **fi
# *************************************************************************************************************************
# Case statements
# **case ${1,,} in
# **	herbert | administrator)
# **		echo "Hello, you're the boss here!"
# **		;;
# **	help)
# **		echo "Just enter your username!"
# **		;;
# **	*)
# **		echo "hello there!"
# **esac
# *************************************************************************************************************************
# Arrays
# **FIRST_LIST=(one two three four five)
# **echo $FIRST_LIST
# **echo ${FIRST_LIST[0]}
# **echo ${FIRST_LIST[1]}
# **echo ${FIRST_LIST[@]}
# *************************************************************************************************************************
# For Loop
# **LIST=(one two three four five)
# **for item in ${LIST[@]};
# **do
# **	echo  $item | wc -c;
# **done
# *************************************************************************************************************************
# Function
# global variable
# **up="before"
# **since="function"
# **echo ${up}
# **echo ${since}
# **showuptime(){
# **	# up=$(uptime -p | cut -c4-)
# **	# since=$(uptime -s)
# **	local up=$(uptime -p | cut -c4-)
# **	local since=$(uptime -s)
# **	cat << EOF
# **----------
# **This machine has been up for ${up}
# **It has been running since ${since}
# **----------
# **EOF
# **}
# **
# **# execute
# **showuptime
# **echo ${up}
# **echo ${since}
# *************************************************************************************************************************
# **showname(){
# **	echo hello $1
# **	if [ ${1,,} = herbert ]; then
# **		return 0
# **	else
# **		return 1
# **	fi
# **}
# **showname $1
# **if [ $? -eq 1 ]; then
# **	echo "Someone unknown called the function!"
# **fi
# *************************************************************************************************************************
# awk
# echo one two three > testfile.txt
# awk '{print $1}' testfile.txt
# echo one,two,three > csvtest.csv
# awk -F, '{print $1}' csvtest.csv
# echo "Just get this word: Hello" | awk '{print $5}'
# echo "Just get this word: Hello" | awk -F: '{print $2}'
# echo "Just get this word: Hello" | awk -F: '{print $2}' | cut -c2
# echo "Just get this word: Hello" | awk -F: '{print $2}' | cut -c2-4
# echo "Just get this word: Hello" | awk -F: '{print $2}' | cut -c2-
# echo "Just get this word: Hello" | awk -F"get" '{print $2}' | cut -c2-
# *************************************************************************************************************************
# sed
# regular expression
# sed 's/fly/grasshopper/g' sedtest.txt
# sed -i.ORIGINAL 's/fly/grasshopper/g' sedtest.txt

