#!/bin/bash

echo -e "Enter the directory where you want to diff files:- \n "
read dir_name

#directory where you want to perform the difference between files
cd $dir_name

#This will collect the details of the files which are common and not by way of md5checksum(I am using md5sum which takes less time for large files).

for files in `ls -S`; do md5sum "$files"; done > /tmp/all_files.txt

#storing the id's of duplicates
#id=`cat /tmp/files.txt |awk {'print $1'} |uniq -u`
cat /tmp/files.txt |awk {'print $1'} |uniq -D > /tmp/ids_of_matching_files.txt

for i in `cat /tmp/ids_of_matching_files.txt`; do echo -e "Matches... [ \n `cat /tmp/all_files.txt |grep $i |awk {'print $2'}` ]"; done 
