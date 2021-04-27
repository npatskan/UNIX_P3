#!/bin/bash

# ECE 3524 Project 3
# Author: Nathan Patskan

while :
do
	echo $(date)
	echo "------------------"
	echo " Main Menu"
       	echo "------------------"
	echo "1. Operating System info"
	echo "2. Hostname and DNS info"
	echo "3. Network info"
	echo "4. Who is online"
	echo "5. Last logged in users"
	echo "6. My IP address"
	echo "7. My disk usage"
	echo "8. My home file-tree"
	echo "9. Process operations"
	echo "10. Exit"
	echo "Enter your choice [ 1 - 10 ]"
	read command_number

	case $command_number in
		1)
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		2)
			echo ""
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		3)
			echo ""
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		4)
			echo ""
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		5)
			echo ""
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		6)
			echo ""
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		7)
			echo ""
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		8)
			echo ""
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		9)
			echo ""
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		10)
			echo "exiting"
			break
			;;
		*)
			echo "Invalid Command"
	esac 

done
