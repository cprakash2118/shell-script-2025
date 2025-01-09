#!/bin/bash
read -p "Enter the 1st number : " num1 
read -p "Enter the 2nd number : " num2
echo "Prime number between $num1 to $num2 are as:" 
for one_by_one_input in $(eval echo "{${num1}..${num2}}")
 do
  half_the_no=$[$one_by_one_input / 2]
  num_count=1
  count=1
  while [ $num_count -le $half_the_no ]
  do
   check_prime=$[${one_by_one_input} % ${num_count} ]
   if [ $check_prime -eq 0 ]
   then
   count=$[$count + 1]
   fi
   num_count=$[$num_count + 1]
  done
  if [ $count -eq 2 ]
   then
    echo $one_by_one_input
  fi
done

