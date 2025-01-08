#!/bin/bash -x 
read -p "Enter the number: " num1
half_the_num1=$[${num1} / 2 ]
count=1
for one_by_one_no in $(eval echo "{1..$half_the_num1}")
#for one_by_one_no in {1..${half_the_num1}}
do
#echo ${one_by_one_no}

 check_prime=$[${num1} % ${one_by_one_no}]
 if [ ${check_prime} -eq 0 ]
 then 
    count=$[$count + 1]
 fi
done
 if [ $count -gt 2 ]
 then
 echo "It's not a prime number - $num1"
 else
 echo "It's a prime number - $num1"
 fi
