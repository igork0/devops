#!/bin/bash
while true
do
    echo "Check for hidden files"
    files=$(shopt -s nullglob dotglob; echo /home/myfolder1/*)
    if [ ${#files} -gt 0 ]
    then
        echo "Move any files from folder1 to folder2"
        mv /home/myfolder1/* /home/myfolder2/
    fi
done
