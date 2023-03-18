##################################################################################################################################
# This script will help to print the available options to fetch from the virtual machine meta-data based on user input via jq.   #
# It assumes the script is running in a GCP node with executable permission via bash.                                            #
##################################################################################################################################


#!/bin/bash

new_list=( $(curl -s "http://169.254.169.254/computeMetadata/v1/instance/disks/?recursive=true" -H "Metadata-Flavor: Google" | jq -n 'inputs[] | keys[]'
) )

echo -e "\nAvailable metadata options are:\n"

#Iterate via loop to display the available options
for element in "${new_list[@]}"
do
   echo "${element}"
done

#Validating user input
echo -e '\nPlease pick an option from the available list: \n'
read input
[[ " ${new_list[*]} " =~ " ${input} " ]] && echo -e "\n${input} is a valid option. Proceeding further.!" || { echo -e "\n${input} is not a valid option. Please check your input and try again.! Exiting" ; exit 1; }

#Provide output based on user input

custom=`curl -s 'http://169.254.169.254/computeMetadata/v1/instance/disks/?recursive=true'"$input" -H 'Metadata-Flavor: Google'`
echo -e "\nThe result is: \n$custom\n"
