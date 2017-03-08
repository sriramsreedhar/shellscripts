#!/bin/bash
echo "Please make sure your repos are pulled to latest before you run this"
echo "Input the Branch name for which you want to check :-  "
read branch_name;
cd /dbc/pa-dbc1111/sreedhars/Perforce/build/main/scheduler/cron.d
echo "............File names............."
find .  -type f -name "$branch_name"
echo "..................Result .........."

lines=`find .  -type f -name "$branch_name"`

if [ -z "$lines" ];
then
  echo "This branch does not exists"
else
  echo "The branch files are :"
  echo "$lines"
fi
