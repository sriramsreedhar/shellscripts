#!/bin/bash
#convert all files in a directory from lowercase to upper case
for i in *; do mv "$i" "$(tr [:lower:] [:upper:] <<< "$i")" ;  done
