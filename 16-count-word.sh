#!/bin/bash

# Usage check
if [ $# -ne 2 ]; then
    echo "Usage: $0 file.doc word"
    exit 1
fi

# Extract text and count word
antiword "$1" | grep -o -i -w "$2" | wc -l
