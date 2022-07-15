#!/bin/sh
# This script can be used for detecting malicious activities"

mkdir monitor_logs

echo "Verifying installed rpms"
rpm -Va > monitor_logs/rpm_va.log

echo "Getting rpm list"
rpm -qa > monitor_logs/rpm_qa.log

echo "Collecting sticky bit files"
find / -perm -1000 -type d 2>/dev/null | tee monitor_logs/stick_bit.log

echo "collecting writable directories information"
#find / -type d \( -perm -g+w -or -perm -o+w \) -exec ls -adl {} \;
find / -type d \( -perm -g+w -or -perm -o+w \) 2>/dev/null | tee monitor_logs/world_write_folders.log

echo "Collecting information about executable folders"
find / -perm /u=x,g=x,o=x -type d 2>/dev/null | tee monitor_logs/executable_folders.log 

echo "Collecting information about world writeable files"
find / -xdev -type d \( -perm -0002 -a ! -perm -1000 \) -print | tee monitor_logs/world_writable_files.log

echo "Collecing network interface information"
ifconfig -a > monitor_logs/interface.log

echo "Collecting `route` information
route -n > monitor_logs/route.log

echo "Collecting Host information
hostnamectl > monitor_logs/host_info.log

echo "Collecting kernel information"
uname -a > monitor_logs/uname.log

echo "iptable rules"
iptables -S | tee monitor_logs/iptables.log

echo "Collecting system parameters"
sysctl -a | tee monitor_logs/sysctl.log
