#!/bin/bash


#Clean system
apt-get autoclean -y
apt-get autoremove -y

#reset
ufw reset

#enable
ufw enable


#turn on firewall logging
ufw logging on high
ufw default allow outgoing
ufw default deny incoming
ufw deny 21 
ufw deny 23
ufw deny 1337
ufw deny cups
ufw deny icmp

#install iptables
apt-get install iptables -y -qq
iptables -A INPUT -p all -s localhost  -i eth0 -j DROP

#locks root 
usermod -L root 

#ufwConf='/etc/default/ufw'

#sed -i 's/IPV6=.*/IPV6=no/' "$ufwConf"
#sed -i 's/IPT_SYSCTL=.*/IPT_SYSCTL=\/etc\/sysctl\.conf/' "$ufwConf"
ufw allow in on lo
ufw allow out on lo
ufw deny in from 127.0.0.0/8
ufw deny from any to 224.0.0.1
ufw default deny incoming
ufw --force enable