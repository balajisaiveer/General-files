#!/usr/bin/env bash

#touch ~/Documents/Scripting/temp.txt
#echo $PWD
git status > ~/Documents/Scripting/temp.txt

#cat ~/Documents/Scripting/a.txt

cat ~/Documents/Scripting/genralstatus.txt
#git status > ~/Documents/Scripting/temp.txt
#cat ~/Documents/Scripting/temp.txt

#diff -q ~/Documents/Scripting/a.txt ~/Documents/Scripting/temp.txt

status=$(diff -q ~/Documents/Scripting/genralstatus.txt ~/Documents/Scripting/temp.txt)
#status = status+"this"
echo $status

if [ "$status" == "" ]
then
 	#git add .
 	#git 
	echo "balaji"
else
	git add .
	git commit -m  "every day update"
	git push origin master
	echo "update"
fi