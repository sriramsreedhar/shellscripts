#!/bin/bash
# Search for files > $MEG_BYTES starting at the $SEARCH_PATH
#
HOLD_FILE=/tmp/largefiles.list
MEG_BYTES=$1
SEARCH_PATH=$(pwd) # Use the current directory

find $SEARCH_PATH -type f -size +${MEG_BYTES}000000c -print > $HOLDFILE

#Note:- there is a plus sign (+) preceding the file size, and there is a c added as a suffix. 
#This combination specifies files larger than $MEG_BYTES measured in bytes, as opposed to blocks.
#usage - ./find-large-files.sh 100 <will look for files greater than 100 MB
