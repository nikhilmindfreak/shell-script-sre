#!/bin/bash

COURSE="DevOps from Current Script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"  # This will print the process ID of the current script
#./13-other-script.sh   # this will execute the other script in a new shell, not affecting the current script's environment
source ./13-other-script.sh  # or you can use . ./13-other-script.sh  # This will execute the other script in the current shell, allowing it to modify the current environment
echo "After calling other script, course: $COURSE"