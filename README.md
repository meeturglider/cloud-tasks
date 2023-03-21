# cloud-tasks
This repository contains the source code for various tasks. 

## Task-#1 ( query the meta data of an instance within AWS and GCP server provide a json formatted output )

This task is divided into two categories:

* Based on userinput
* userinput parsed via jq

Please refer to [meta-data scripts](https://github.com/meeturglider/cloud-tasks/tree/main/metadata-scripts)

## Task-#2 ( A function to fetch the value of a nested object from the provided key )

This is achieved using python, the function will simply iterate through dictionary to find the value from the nested array.  Please refer to [python-code](https://github.com/meeturglider/cloud-tasks/blob/main/python-code/nested_objects.py)

## Task-#3 ( A 3-tier architecture using terraform )

This task is achieved using terraform. Please refer to [terraform](https://github.com/meeturglider/cloud-tasks/tree/main/three-tier-architecure/terraform). Note: At this point, it only has network creation part. The DB creation and web creation is not yet completed. 
