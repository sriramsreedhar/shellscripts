#!/bin/bash
opt_size=`df -h |grep opt |awk {'print $4'} |cut -d '%' -f1`
limit=80
if [ $opt_size > $limit ]; then

	echo " " |tee /opt/portal/pin4/7.5/var/batch_controller/batch_controller.pinlog > /dev/null
	echo " " |tee  /opt/portal/pin4/7.5/var/batch_controller/batch_controller.pinlog_1 > /dev/null
	echo " " |tee  /opt/portal/pin/7.5/ifw/data/balance/TxnLog_2014*.log > /dev/null
	echo " " |tee /opt/portal/pin4/7.5/ifw/data/balance/TxnLog_2014*_CloudBatch.log > /dev/null
	echo `df -h |grep opt` |mutt -s "$HOSTNAME -  Emptied some big Logs in /opt  " sriram.sreedhar@rackspace.com
fi
