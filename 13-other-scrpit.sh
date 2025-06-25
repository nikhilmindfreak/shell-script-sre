#!/bin/bash

COURSE="DevOps from Current Script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"  # This will print the process ID of the current script

#./16-other-script.sh

source ./16-other-script.sh  # or you can use . ./16-other-script.sh

echo "After calling other script, course: $COURSE"