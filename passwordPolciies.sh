#!/bin/bash

echo "Password policies with /etc/login.defs"

sed -i '165s/.*/PASS_MAX_DAYS\o01130/' /etc/login.defs
sed -i '166s/.*/PASS_MIN_DAYS\o0113/' /etc/login.defs
sed -i '167s/.*/PASS_WARN_AGE\o0117/' /etc/login.defs
sed -i '168s/.*/PASS_MIN_LEN\o0118/' /etc/login.defs


echo "cracklib password policies"

apt-get install libpam-cracklib -y -qq

echo "check config files to copy & paste /etc/pam.d/common-password file"