#!/bin/bash

# Project 1 for ECE 3524
# V.2 modified for Project 3
# By: Nathan Patskan

# recursive function for traversing file system and printing results to html file
function list_elm { 
	local curr_dir=$(pwd)
	curr_dir=${curr_dir// /%20} # replace spaces with %20 for html linking
	local curr_dir_name=${PWD##*/} # get only the directory name for display
	echo "<b><big><a href="file://"$curr_dir"">$curr_dir_name</a></big></b>" >> $outputfile
	echo "<ul>" >> $outputfile

	# ignore hidden files and directories, enclose results in quotes for names with spaces
	local files=$(find . -maxdepth 1 -type f  -readable \( ! -iname ".*" \) -printf ' "%f" ' ) 
	local dircs=$(find . -maxdepth 1 -type d  -readable \( ! -iname ".*" \) -printf ' "%f" ' )
	
	# store files in array able to handle spaces
	eval fileArray=($files)
	for file in "${fileArray[@]}"  #loop through quoted elements
	do
		fileLink=$(readlink -f $file)
		fileLink=${fileLink// /%20}
		echo "<li><a href="file://$fileLink">" >> $outputfile
		echo "$file" >> $outputfile
		echo "</a></li>" >> $outputfile
	done

	# store directories in array able to handle spaces
	eval dircArray=($dircs)
	for dr in "${dircArray[@]}"
	do
		cd "$dr"
		list_elm 
		cd ..
	done
	echo "</ul>" >> $outputfile
}

# Command Line Argument Error Checking
if [ $# -ne 2 ]
then
	echo "Must Enter 2 arguments. <tree root> <output file>"
	echo "You entered $# arguments"
	exit
fi

# temp file to create html output
outputfile="/tmp/tempTreeScriptOutput.html"
> $outputfile
start_dir=$(pwd)
cd $1
echo "<html><head><big><big>Site Map for $1</big></big></head><body>" >> $outputfile

echo "<ul>" >> $outputfile
list_elm
echo "</ul>" >> $outputfile
echo "</body></html>" >> $outputfile
cd $start_dir
cp $outputfile $2
rm $outputfile

