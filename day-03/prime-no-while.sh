#!/bin/bash -x 
read -p "Enter the number : " num1 
half_the_num1=$[$num1 / 2]
start_no=1
count=1
while [ ${start_no} -le ${half_the_num1} ]
#while [ true ]
 do
  check_prime=$[$num1 % $start_no]
  if  [ $check_prime -eq 0 ]
   then 
    count=$[$count + 1]
  fi
  start_no=$[$start_no + 1]
 done

 if [ $count -eq 2 ]
  then
   echo "It's a prime number $num1"
 else 
  echo "It's not a prime number $num1"
 fi
