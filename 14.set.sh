#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status.

failure(){
    echo "Failed at $1: $2" # Function to handle errors $1 for first aru lineno and $2 for second aru command bash_command
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR  # trap command Trap errors and call the failure function with line number and command

USERID=$(id -u) #ERR

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysfaffql -y  
dnf install git -y

echo "is script proceeding?"