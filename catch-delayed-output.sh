#!/bin/bash

#Have you ever had a hard time trying to catch the output of a command that has a delayed output?

OUTFILE=“/tmp/outfile.out”   # Define the output file
cat /dev/null > $OUTFILE     # Create a zero size output file

# Start an until loop to catch the delayed response

until [ -s $OUTFILE ]
do
     delayed_output_command >> $OUTFILE
done

# Show the resulting output

more $OUTFILE
