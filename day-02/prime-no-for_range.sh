#!/bin/bash
read -p "Enter the 1st number: " num1
read -p "Enter the 2nd number: " num2
echo "List of prime number between $num1 to $num2"

for main_input_one_by_one in $(eval echo "{${num1}..${num2}}")
 do
  half_the_num1=$[${main_input_one_by_one} / 2 ]
  count=1
  for one_by_one_no in $(eval echo "{1..$half_the_num1}")
   do
    check_prime=$[${main_input_one_by_one} % ${one_by_one_no}]
    if [ ${check_prime} -eq 0 ]
     then 
      count=$[$count + 1]
    fi
  done
 if [ $count -eq 2 ]
  then
   echo "$main_input_one_by_one"
 fi
done
