#!/bin/bash         

# we use read to get input from the user
echo "Enter your user name: "
read -s USERNAME   #-s option is used to hide the input for security reasons
echo "please enter your password: "
read -s PASSWORD  
echo "Hello, $USERNAME!, your password is $PASSWORD"
echo "This script demonstrates the use of variables in shell scripting."