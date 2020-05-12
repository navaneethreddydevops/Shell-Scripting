#!/bin/bash
set +x
export onevalue=$1
#this script will dispay the date and who logged in -n Flag will print on same line with output
echo -n "Time and Date are:"
date
echo "Let's see who's logged into system:"
who
######Displaying messages###
echo "User info for userid:$USER"
echo UID: $UID
echo HOME: $HOME
echo "The cost of the item is $15"
echo "The cost of the item is \$15"
###Variable names are case sensitive and no spaces while assignment
export Var1=14
export var1=15
echo $Var1
echo $var1
days=10
guest="Navaneeth"
echo "$guest checkedin $days days ago"
days=5
guest="Sumanth"
echo "$guest checked in $days days ago"

####Assigning the other command value to a variable

testing=$(aws s3 ls | awk '{print $3}')
echo $testing

today=$(date +%y%m%d)
ls -lrt /usr/bin > log.$today