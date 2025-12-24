#!/bin/bash

#User defined variables

hero="Rancho"
villain="Virus"

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villain hai $villain"



#Shell/env variables(Predefined variables)

echo "Current logged in user is $USER"

read -p "Rancho ka poora name kya tha?" fullname

echo "Rancho ka poora name $fullname tha"

#arguments

#./3_idiots.sh Raju Farhaan Rancho

echo "Movie ka name hai $0"

echo "1st idiot: $1"

echo "2nd idiot: $2"

echo "3rd idiot: $3"

echo "Total no of idiots are: $#"

echo "Hench the six idiots are: $@"
