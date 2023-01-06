#!/bin/bash
sum=0

for i in $(echo $1 | (tr ',' '\n'));
    do  if [ $(($i % 2)) -eq 0 ]
        then sum=$(($sum+$i))     
        fi
  done

echo $sum
