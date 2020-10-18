#!/bin/bash

## Tested on Debian Buster ( 10 )

#####################################################
#                                                   #
#                    Color Codes                    #
#                                                   #
#####################################################

RESET='\033[0m'
YELLOW='\033[1;33m'
#GRAY='\033[0;37m'
#WHITE='\033[1;37m'
GRAY_R='\033[39m'
WHITE_R='\033[39m'
RED='\033[1;31m' # Light Red.
GREEN='\033[1;32m' # Light Green.
#BOLD='\e[1m'


#####################################################
#                                                   #
#                   Start Checks                    #
#                                                   #
#####################################################

header() {
  clear
  clear
  echo -e "${GREEN}#########################################################################${RESET}\\n"
}

header_red() {
  clear
  clear
  echo -e "${RED}#########################################################################${RESET}\\n"
}

# Check for root (SUDO).
if [[ "$EUID" -ne 0 ]]; then
  header_red
  echo -e "${WHITE_R}#${RESET} The script need to be run as root...\\n\\n"
  # echo -e "${WHITE_R}#${RESET} For Ubuntu based systems run the command below to login as root"
  # echo -e "${GREEN}#${RESET} sudo -i\\n"
  # echo -e "${WHITE_R}#${RESET} For Debian based systems run the command below to login as root"
  # echo -e "${GREEN}#${RESET} su\\n\\n"
  exit 1
fi

# Check / set language to English. The script requires English.
if ! env | grep "LC_ALL\\|LANG" | grep -iq "en_US\\|C.UTF-8"; then
  header
  echo -e "${WHITE_R}#${RESET} Your language is not set to English ( en_US ), the script will temporarily set the language to English."
  echo -e "${WHITE_R}#${RESET} Information: This is done to prevent issues in the script.."
  export LC_ALL=C &> /dev/null
  set_lc_all=true
  sleep 3
fi

abort() {
  if [[ "${set_lc_all}" == 'true' ]]; then unset LC_ALL; fi
  echo -e "\\n\\n${RED}#########################################################################${RESET}\\n"
  echo -e "${WHITE_R}#${RESET} An error occurred. Aborting script..."  
  exit 1
}

start_script() {
  echo -e "    Easy Debian (very opinionated) Set-Up Script"
  echo -e "\\n${WHITE_R}#${RESET} Starting the Easy Debian (very opinionated) Set-Up Script.."
  echo -e "${WHITE_R}#${RESET} Thank you for using my Debian (very opinionated) Set-Up Script :-)\\n\\n"
}
start_script

copy_files() {
  read -rp $'\033[39m#\033[0m Do you want to copy all config files? (Y/n) ' yes_no
  case "$yes_no" in
      [Yy]*|"") 
        echo -e "Copying files to system root.....\\n\\n"
        cp -r -v files/etc/apt/sources.list /etc/apt/aources.list
        cp -r -v files/etc/apt/preferences.d/90_zfs /etc/apt/preferences.d/90_zfs
        cp -r -v files/etc/default/grub /etc/default/grub
        cp -r -v files/etc/network/interfaces /etc/network/interfaces
        cp -r -v files/etc/pam.d/common-session-noninteractive /etc/pam.d/common-session-noninteractive
        cp -r -v files/etc/pam.d/login /etc/pam.d/login
        cp -r -v files/etc/pam.d/sshd /etc/pam.d/sshd
        cp -r -v files/etc/ssh/sshd_config /etc/ssh/sshd_config
        cp -r -v files/etc/systemd/system/rc-local.service /etc/systemd/system/rc-local.service
        cp -r -v files/etc/systemd/timesyncd.conf /etc/systemd/timesyncd.conf
        cp -r -v files/etc/vim/vimrc /etc/vim/vimrc
        cp -r -v files/etc/passwd /etc/passwd
        cp -r -v files/etc/rc.local /etc/rc.local
        cp -r -v files/etc/sysctl.conf /etc/sysctl.conf
        cp -r -v files/root/.bashrc /root/.bashrc
        cp -r -v files/root/.vimrc /root/.vimrc

        cp -r -v files/var/lib/dpkg/statoverride /var/lib/dpkg/statoverride
         ;;
      [Nn]*) ;;
  esac
}
copy_files

update_system() {
  echo -e "${WHITE_R}#${RESET} Running apt-get update..."
  apt update
  apt upgrade -y
  echo -e "Update complete. \\n\\n"
}
update_system

install_utils() {
  echo -e "Installing various utilities..... \\n\\n"
  apt -y install vim make gcc net-tools whois htop ntpdate flex bc zlib1g-dev libssl-dev psmisc smartmontools linux-headers-$(uname -r) sudo libncurses-dev bison libelf-dev ethtool at
  echo -e "\\n\\n"
}
install_utils

install_zfs() {
  read -rp $'\033[39m#\033[0m Do you plan to install zfs from source? (Y/n) ' yes_no
  case "$yes_no" in
      [Yy]*|"") 
        apt -y install uuid-dev libblkid-dev libnvpair1linux ;;
      [Nn]*) ;;
  esac
}
install_zfs

crap_cleanup() {
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

  cp -r -v files/var/lib/dpkg/statoverride /var/lib/dpkg/statoverride
}
crap_cleanup

install_nginx() {

}

clean_up() {
  systemctl restart ssh
}
clean_up

