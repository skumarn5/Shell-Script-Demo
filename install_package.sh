#!/bin/bash


<< Info

This script will install the package that you will pass in the argument

Eg: ./install_package.sh nginx

Info

echo "=================================================Installing paackage $1===================================================="

sudo apt-get update > /dev/null

sudo apt-get install $1 -y  > /dev/null

echo "================================================Installation of $1 completed================================================"
