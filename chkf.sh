#! /bin/bash

###Variables
script_name="$0"
args_array="$@"
len_args="${#args_array[@]}"

###Function for printing usage
usage(){
echo "Simple script for finding out the existence of a file."
echo "Usage: $script_name [filename] [..]"
echo "Can be used with multiple file names.<Still being worked on>"
}

###Function for testing existence
if_present(){
#Check if the file or directory name provided is present or not
#1. Check if the argument provided is empty or not
if [[ -z "$1" ]] 
	then usage
	     exit
fi	     

#2. Determine if it is a file or directory or not either of them

if [[ -d "$1" ]]
	then echo "$1 is a directory"
elif [[ -e "$1" ]] 
	then echo "$1 is a file"
else 
	echo "$1 does not exist as a form of file or directory."
	echo "Exiting..."
fi	

}

for i in 1.."$len_args"
do 
    if_present "\${$i}"
done
