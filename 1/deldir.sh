#!/bin/bash

#parameters
FST="$1"
SEC="$2"

#number of parameters passed
if [ $# -ne 2 ]
then
        echo "$(basename $0) dirone dirtwo"
        exit 1
fi

#checking first dir exists

if [ ! -d $FST ]
then
        echo "Directory $FST does not exists!"
        exit 2
fi

#checking second dir exists

if [ ! -d $SEC ]
then
        echo "Directory $SEC does not exists!"
        exit 2
fi

#loop to compare files in a each directory

for f in $SEC/*
do

        if [ -f $f ]
        then
                rFile="$FST/$(basename $f)"
                if [ -f $rFile ]
                then
                        echo -n "Deleting $rFile"
                        /bin/rm $rFile
                        [ $? -eq 0 ] && echo " Task Success" || echo " Task Failed"

                fi
        fi
done
