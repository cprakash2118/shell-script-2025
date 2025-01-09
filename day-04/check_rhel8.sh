#!/bin/bash 
function check_rhel8 () {
 #check_version=$(cat /etc/redhat-release  | awk -F" " '{print $6}' | awk -F"." '{print $1}')
 check_version=7
 if [ $check_version -eq 8 ]
 then
 return 0 
 else
 return 1
 fi
}
check_rhel8
