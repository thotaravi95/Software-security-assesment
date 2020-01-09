#!/bin/sh
# You need to modify this script to make it run the vulnerable program repeatedly

old=`ls -l /etc/shadow`
new=`ls -l /etc/shadow`
while [ "$old" = "$new" ]
do
    new=`ls -l /etc/shadow`
done

echo "STOP... The shadow file has been changed"
