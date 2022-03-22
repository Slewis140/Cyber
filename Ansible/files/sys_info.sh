#!/bin/bash

echo "A Quick System Audit Script" >> $output
1 Feb 2022 >> $output
echo "" >> $output
echo "Machine Type Info:" >> $output
echo -e "$MACHTYPE \n" >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> $output
echo "Hostname: $(hostname -s) " >> $output
echo "DNS Servers: " >> $output
cat /etc/resolv.conf >> $output
echo "Memory Info:" >> $output
free >> $output
echo -e "\nCPU Info:" >> $output
lscpu | grep CPU >> $output
echo -e "\nDisk Usage:" >> $output
df -H | head -2 >> $output
echo -e "\nWho is logged in: \n $(who) \n" >> $output

