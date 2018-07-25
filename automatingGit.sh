#!/usr/bin/env bash
#-----------------------------------------------------------------------
#Automation of Git for dily purposes
git status > temp.txt
#---------------------------------------------------------------------------
#creating file equalling the gitstatus when no changes exsisting
echo "On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean" > genralstatus.txt
#-------------------------------------------------------------------------------
status=$(diff -q ~/Documents/Scripting/genralstatus.txt ~/Documents/Scripting/temp.txt)

if [ "$status" == "" ]
then
	echo "-----------------------------------------"
 	echo "Nothing changed today"
 	echo "-----------------------------------------"
else
	git add .
	git commit -m  "every day update"
	git push origin master

	echo "-----------------------------------------"
 	echo "Today changes in this repo are pushed"
 	echo "-----------------------------------------"
fi
rm temp.txt
rm genralstatus.txt

