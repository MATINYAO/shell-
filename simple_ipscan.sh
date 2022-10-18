#!/bin/bash
echo "for example sh simple_ipscan.sh  ip.txt"
for line in `cat $1`
do
	echo $line
	$line >> ip_scan_data.txt
	hping3 -8 1-65535 -S $line | >> ip_data.txt
	echo "$line done"
done