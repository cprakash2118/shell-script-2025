#!/bin/bash
read -p "Enter the file/dir : " obj 
if [ -f $obj ]
then 
 echo "This is a not dir"
 ls -ld $obj
else
 echo "This is dir"
fi
