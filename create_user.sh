#!/bin/bash

>>help

This shell script is written for creating user

help

echo "=======================Creation of Nem User Started============================"
echo "Enter username:$1"
echo "Enter password:$2"

sudo  useradd -m "$1"

echo -e "$2\n$2"|sudo passwd "$1"

echo "=======================Creation of User Completed=============================="

sudo userdel "$1"

echo "=======================Deletion of User Completed=============================="

if [ $(cat /etc/passwd |grep $1|wc|awk '{print $1}') == 0 ];
then
	echo "as wc is 0 the user is deleted"
else
	echo "user is not deleted"
fi
