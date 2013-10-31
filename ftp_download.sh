#!/bin/bash
if [ "$#" -ne 4 ];then

echo "Please input upto 4 Argument in YearMonthDate format example 20131030 for 2013 october 30th files \n"
	else
d=sa3feed-`date +%Y-%m-%d-%H-%M`;
mkdir /tmp/$d;
cd /tmp/$d;
echo "Fetching SA3 Feeds \n"
echo "Please input upto 4 Argument in Year and Month format example 201310 for 2013 october files \n"
sftp polaris@10.69.254.157 << Load
cd export_data/archive
get *_$1*.xml
get *_$2*.xml
get *_$3*.xml
get *_$4*.xml
bye
Load

for i in `ls  |grep *_$1*.xml`
do
tar -cvf $1.tar *_$1*.xml
done

fi
