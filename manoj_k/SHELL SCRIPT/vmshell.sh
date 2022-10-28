#!/bin/bash
d=`date`
h=`hostname`
ip=`hostname -i`
s=`uptime`
cpu=`lscpu | grep "CPU(s):" | head -n 1 | awk '{print $2}'`
thread=`lscpu | grep 'Thread(s) per core:' | awk '{print $4}'`
disc=`lsblk | awk '{print $1}' | grep sda | head -n 1 | wc -l`
Firmware=`dmidecode | grep Firmware`
os=`cat /etc/os-release | grep PRETTY_NAME`
osversion=`cat /etc/os-release | grep VERSION_ID`
osversion2=`cat /etc/os-release | grep PRETTY_NAME | awk '{print $2}'`
machine=`facter | grep  "Virtual Machine" | grep product | awk '{print $3,$4}'`

echo "Today is $d"
echo "Hostname of the machine is $h"
echo "Ip address of the machine is $ip"
echo "system uptime of the machine is $s"
echo "number of cpus in the machine is $cpu"
echo "thread per core of the machine is $thread"
echo "number of discs in the machine is $disc"
echo "Firmware of the machine is $Firmware"
echo "os of the system is $os"
echo "os major version of the system is $osversion"
echo "os minor version of the system is $osversion2"
echo "machine type is $machine"



