#!/bin/bash
check=true 
count=0

while [ $check == "true" ]
do

 read -p "Enter the user name: " name 
 read -p "Enter the password : " pass 
 if [ $name == "root" ] && [ $pass == "redhat" ]
  then
  echo "Welcome User, $name"
  check=false
 else
  count=$[$count + 1]
  if [ $count -eq 3 ]
  then
  count=0
  clear 
  echo  "Multiple times failed login, try again next day !!"
  sleep 5
  fi
  echo "Wrong Password, try again !!!"
 fi
done
