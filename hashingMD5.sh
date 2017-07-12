#!/bin/bash

number="1"
lists=client
groceries=customer
domain=@buyme.com

while [ $number -lt 51 ]
do
printf "$lists$number$domain/ " >> emailhashes.txt
echo -n $lists$number$domain | md5sum >> emailhashes.txt
printf "$groceries$number$domain/ " >> emailhashes.txt
echo -n $groceries$number$domain | md5sum >> emailhashes.txt
number=$[$number+1]
done 
