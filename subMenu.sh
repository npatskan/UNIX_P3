#!/bin/bash

# SubMenu options for Project 3
# Author: Nathan Patskan

while :
do
	echo "(Please enter the number of your selection below)"
	echo "1. Show all processes"
	echo "2. Kill a process"
	echo "3. Bring up top"
	echo "4. Return to Main Menu"
	read selection
	if [ "$selection" == ":q" ]; then
	       	break
       	fi
	case $selection in
		1)
			ps -ef
			;;
		2)
			echo "Please enter the PID of the process to kill"
			read kill_number
			kill $kill_number
			;;
		3)
			top
			;;
		4)
			break
			;;
		*)
			echo "Invalid Selection"
			;;
	esac

done 
