#!/bin/bash

echo "remove any aliases"
unalias -a



#list hidden files
ls -a /etc/sudoers.d


chmod 400 /etc/shadow
sudo chmod 644 /etc/passwd

echo "Read/Write permissions on shadow have been set."


gsettings set org.gnome.desktop.session idle-delay 300
echo "Screen timeout policy set to 5 minutes"

gsettings get org.gnome.desktop.screensaver lock-enabled
echo "Screen lock enabled"

echo "list all SUID Binaries"
find / \( -perm -4000 \) -type f -exec ls -l {} \; > suidBinaries.txt


echo "rkhunter, ckrootkit and synaptic are being downloaded"
apt-get install rkhunter chkrootkit -y
apt-get install synaptic -y

echo "install auditd"
sudo apt-get install auditd -y 
sudo apt-get install audispd-plugins -y

echo "install fail2ban"
sudo apt-get install fail2ban -y

echo "install usbguard"
sudo apt-get install usbguard -y
systemctl enable usbguard.service
systemctl start usbguard.service
