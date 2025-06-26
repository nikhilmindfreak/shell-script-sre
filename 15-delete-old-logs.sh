#!/bin/bash 


SOURCE_DIRECTORY=/tmp/app-logs # Change this to the directory where your logs are stored #we created the folder app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]  # Check if the source directory exists # -d is used to check if the directory exists
then
    echo -e "$G Source directory exists $N"
else
    echo -e "$R Please make sure $SOURCE_DIRECTORY exists $N"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14) # - name "*.log" is used to find all log files in the directory, -mtime +14 is used to find files older than 14 days   

while IFS= read -r line
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES