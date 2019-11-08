#!/bin/bash
echo -n "Is this a good question (y/n)? "
read answer

# if echo "$answer" | grep -iq "^y" ;then

if [ "$answer" != "${answer#[Yy]}" ] ;then
    ls -la
else
    echo No
fi
