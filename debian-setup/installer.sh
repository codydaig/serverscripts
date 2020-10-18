#!/bin/bash

### copy our scripts and init files, and enable rc.local
cd files-to-copy-to-root-filesystem
sh copy-script.sh
systemctl enable rc-local


### update apt, and install a pile of crap
apt update
apt -y install vim make gcc net-tools whois htop ntpdate flex bc zlib1g-dev libssl-dev psmisc smartmontools iucode-tool linux-headers-$(uname -r) amd64-microcode intel-microcode sudo libncurses-dev bison libelf-dev ethtool at


## next line only if you need zfs from source
# apt -y install uuid-dev libblkid-dev libnvpair1linux

## next line only if you need to do a web server
# apt -y install libpcre3-dev libexpat1-dev libnghttp2-dev libxml2-dev libpng-dev libsqlite3-dev

### clean up crap that apt turns on and installs
systemctl disable smartd
apt -y remove exim* maria*
apt -y autoremove
killall exim4
rm -r -f /etc/exim4
rm -f /etc/init.d/exim4
rm -f /etc/cron.daily/exim4-base
rm -r -f /var/spool/exim*
rm -r -f /var/log/exim4*
rm -f /etc/logrotate.d/exim4-base
rm -f /etc/logrotate.d/exim4-paniclog
rm -f /etc/ppp/ip-up.d/exim4
rm -f /etc/rc0.d/K01exim4
rm -f /etc/rc1.d/K01exim4
rm -f /etc/rc2.d/S03exim4
rm -f /etc/rc3.d/S03exim4
rm -f /etc/rc4.d/S03exim4
rm -f /etc/rc5.d/S03exim4
rm -f /etc/rc6.d/K01exim4
rm -f /etc/default/exim4
rm -r -f /var/lib/exim4*
rm -f /run/systemd/generator.late/exim4.service
rm -f /run/systemd/generator.late/graphical.target.wants/exim4.service
rm -f /run/systemd/generator.late/multi-user.target.wants/exim4.service
rm -f /run/systemd/units/invocation:exim4.service

dpkg --purge exim4-base exim4-config exim4-daemon-light mariadb-common mysql-common telnet libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxmuu1 xauth laptop-detect


deluser Debian-exim
rm -r -f /home/codydaig


### running this again to fix /var/lib/dpkg/statoverride
sh copy-script.sh

### final check for updates and update grub before rebooting
apt -y update
apt -y dist-upgrade
/usr/sbin/update-grub
