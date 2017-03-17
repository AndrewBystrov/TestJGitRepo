#!/bin/bash
#define variables
q=$(date +%s%N)
pwd=$(pwd)
count=15
#echo "Count : $count "
#echo "var : $1 "
if [ -n "$1" ]
  then
    echo "Count changed to $1 "
    count=$1;
fi
#echo "Count : $count "

#write to file
echo "Start new line" > 3.txt
echo "Next $count lines create conflict" >> 3.txt
#for i in {1.."$count"}
for((i = 0; i < "$count"; i++))
do
  echo $(date +%s%N) >> 3.txt
done
echo "And next line has 1 conflict" >> 3.txt
echo $pwd >> 3.txt
echo "Done" >> 3.txt
#echo ''
#cat 3.txt
