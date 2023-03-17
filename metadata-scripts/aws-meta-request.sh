###########################################################################################################################
# This script will help to print the available options to fetch from the virtual machine meta-data based on user input.   #
# It assumes the script is running in a AWS node with executable permission via bash.                                     #
###########################################################################################################################


#!/bin/bash

list=( $(curl -s 'http://169.254.169.254/latest/meta-data/') )

echo -e "\nAvailable metadata options are:\n"

#Iterate via loop to display the available options

for element in "${list[@]}"
do
   echo "${element}"
done

#Validating user input
echo -e '\nPlease pick an option from the available list: \n'
read input
[[ " ${list[*]} " =~ " ${input} " ]] && echo -e "\n${input} is a valid option. Proceeding further.!" || { echo -e "\n${input} is not a valid option. Please check your input and try again.! Exiting" ; exit 1; } 

#Provide output based on user input
custom=`curl -s 'http://169.254.169.254/latest/meta-data/'"$input"`
echo -e "\nThe result is: \n$custom\n"