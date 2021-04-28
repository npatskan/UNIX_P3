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
			echo "---------------------------"
			echo " system information"
			echo "---------------------------"
			echo "Operating system :  $(uname)"
			echo "$(/usr/bin/lsb_release -a)"
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		2)
			echo "------------------------------"
			echo " Hostname and DNS information"
			echo "------------------------------"
			echo "Hostname : $(hostname -s)"
			echo "DNS domain : $(domainname)"
			echo "Fully qualified domain name : $(hostname -f)"
			echo "Network address (IP) : $(hostname -i | awk '{print $2}')"
			echo "DNS name server (DNS IP) : $(grep "nameserver" /etc/resolv.conf | awk 'NR==1{print $2}')"
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		3)	
			echo "-------------------------------"
			echo " Network information"
			echo "-------------------------------"
			echo " Total Network interfaces found : $(ifconfig -a | grep 'flags' | wc -l)"
			echo " **** IP Addresses Information *****" 
			echo "$(ip addr show)"
			echo "*******************************"
			echo "*** Network routing ***********"
			echo "*******************************"
			echo "$(netstat -rn)"
			echo "*******************************"
			echo "** Interface traffic information*"
			echo "*******************************"
			echo "$(netstat -i)"
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		4)
			echo "--------------------------------"
			echo " Who is Online"
			echo "--------------------------------"
			
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		5)
			echo "--------------------------------"
			echo " List of last logged in users"
			echo "--------------------------------"

			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		6)
			echo "--------------------------------"
			echo " Public IP information"
			echo "--------------------------------"

			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		7)
			echo "--------------------------------"
			echo " Disk Usage information"
			echo "--------------------------------"

			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		8)
			echo "--------------------------------"
			echo " HTML Tree File Generated"
			echo "--------------------------------"
			
			echo "Press [Enter] key to continue..."
			read cont_command
			;;
		9)
			echo "--------------------------------"
			echo " Not implemented"
			echo "--------------------------------"
			
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
