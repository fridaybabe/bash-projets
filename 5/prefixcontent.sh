#!/bin/bash

#parameter
FST="$1"

if [ $# -ne 1 ]
then
        echo "$(basename $0) <filename>"
        exit 1
fi

#checking if it's a file

if [ ! -f $FST ]
then
        echo "File $FST does not exist !"
        exit 2
fi
# display using line number prefix
nl $FST
