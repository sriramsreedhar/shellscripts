#!/bin/bash
clear;
$RHEL="cat /etc/redhat-release |awk  '{print $7}' |cut -d'.' -f1";

echo "Would you like to execute this script? y/n "
read answer

if [ "$answer" = "y" ]; then

/usr/bin/perl -pi.back -e 's/\d\d\d\d\d\d-//g;' /tmp/sriram/hosts;

sleep 1;
echo "Host file corrected";

#executing commands sequentially , the shell waits for each command to terminate in turn.

echo " Changing clock config"
cp /etc/sysconfig/clock /etc/sysconfig/clock.orig;
echo " etc_sysconfig_clock backup taken"
> /etc/sysconfig/clock;
echo "ZONE="UTC""  >>   /etc/sysconfig/clock;
echo "UTC=true" >> /etc/sysconfig/clock;
echo "ARC=false"  >> /etc/sysconfig/clock;
echo "Parameters set in etc_sysconfig_clock \n";



mv /etc/localtime /etc/localtime.orig;
ln -sf /usr/share/zoneinfo/UTC /etc/localtime;
/sbin/hwclock --systohc;
echo "local time and hardware clock has been set";

#ssh-keygen running silently !!
ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N "";

sleep 3;
echo "ssh-keygen created"

echo "RHEL version is 5 !! so installing EPEL 5 repository …";
if [ "$RHEL" = "5" ]; 
then
               rpm -Uvh http://dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm
            elif[ "$RHEL" == "6" ];
then
echo " RHEL version is 6  !! so running EPEL 6 repository …"
            rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

else

echo "RHEL version found was neither 5 nor 6 So not able to execute EPEL repository"

fi


else

echo "ok… script exited !!";
fi
