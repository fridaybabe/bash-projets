#!/bin/bash

echo "Enter first number : "
read n1

echo "Enter second number : "
read n2

if [ $n2 -gt $n1 ];
then
for(( i=$n1; i<=$n2; i++ ))
do
  # checking odd or even number
  check=$(( $i % 2 ))
  if [ $check -ne 0 ];
  then
    echo $i
  fi
done
else
echo "$n2 must be greater than $n1, try again !"
fi
