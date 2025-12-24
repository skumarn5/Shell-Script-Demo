#!/bin/bash


<<Info

This scrip will check if user exist

Info


read -p "Please enter the user you wish to check: " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
	echo "User Does not exists"
else
	echo "User Exists"
fi
