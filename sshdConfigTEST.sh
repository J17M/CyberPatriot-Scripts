#!/bin/bash

sshdConf='/etc/ssh/sshd_config'

sed -i -e 's/^Include \/etc\/ssh\/sshd_config.d\/\*.conf/#Include \/etc\/ssh\/sshd_config.d\/\*.conf/' "$sshdConf"
sed -i -e 's/.*RekeyLimit.*/RekeyLimit 512M 1h/' "$sshdConf"
sed -i -e 's/#LogLevel.*/LogLevel VERBOSE/' "$sshdConf"
sed -i -e 's/#LoginGraceTime.*/LoginGraceTime 30s/' "$sshdConf"
sed -i -e 's/#PermitRootLogin.*/PermitRootLogin no/' "$sshdConf"
sed -i -e 's/#StrictModes.*/StrictModes yes/' "$sshdConf"
sed -i -e 's/#MaxAuthTries.*/MaxAuthTries 3/' "$sshdConf"
sed -i -e 's/#MaxSessions.*/MaxSessions 3/' "$sshdConf"
sed -i -e 's/#PubkeyAuthentication.*/PubkeyAuthentication yes/' "$sshdConf"
sed -i -e 's/#AuthorizedKeysFile.*/AuthorizedKeysFile .ssh\/authorized_keys/' "$sshdConf"
sed -i -e 's/#PasswordAuthentication.*/PasswordAuthentication no/' "$sshdConf"
sed -i -e 's/#PermitEmptyPasswords.*/PermitEmptyPasswords no/' "$sshdConf"
sed -i -e 's/#AllowAgentForwarding.*/AllowAgentForwarding no/' "$sshdConf"
sed -i -e 's/#AllowTcpForwarding.*/AllowTcpForwarding no/' "$sshdConf"
sed -i -e 's/#GatewayPorts.*/GatewayPorts no/' "$sshdConf"
sed -i -e 's/X11Forwarding.*/X11Forwarding no/' "$sshdConf"
sed -i -e 's/#PrintLastLog.*/PrintLastLog yes/' "$sshdConf"
sed -i -e 's/#TCPKeepAlive.*/TCPKeepAlive no/' "$sshdConf"
sed -i -e 's/#PermitUserEnvironment.*/PermitUserEnvironment no/' "$sshdConf"
sed -i -e 's/#Compression.*/Compression no/' "$sshdConf"
sed -i -e 's/#ClientAliveCountMax.*/ClientAliveCountMax 2/' "$sshdConf"
sed -i -e 's/#ClientAliveInterval.*/ClientAliveInterval 300/' "$sshdConf"
sed -i -e 's/#UseDNS.*/UseDNS no/' "$sshdConf"
sed -i -e 's/#MaxStartups.*/MaxStartups 10:30:60/' "$sshdConf"
sed -i -e 's/#PermitTunnel.*/PermitTunnel no/' "$sshdConf"
sed -i -e 's/#IgnoreUserKnownHosts.*/IgnoreUserKnownHosts yes/' "$sshdConf"
sed -i -e 's/#HostbasedAuthentication.*/HostbasedAuthentication no/' "$sshdConf"
sed -i -e 's/#KerberosAuthentication.*/KerberosAuthentication no/' "$sshdConf"
sed -i -e 's/#GSSAPIAuthentication.*/GSSAPIAuthentication no/' "$sshdConf"
sed -i -e 's/.*Subsystem.*sftp.*/Subsystem sftp internal-sftp/' "$sshdConf"