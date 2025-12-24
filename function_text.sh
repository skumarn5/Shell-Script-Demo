#!/bin/bash

<<Info
This script will explain the use of function
Info

function create_user {

read -p "Please enter the name of new User: " username

sudo useradd -m $username 

echo "User created successfully"

}

for (( i=1 ; i<=5 ; i++ ))
do
	create_user
done


