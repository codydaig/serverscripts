#!/bin/sh

#####
#     Flush the IPTABLES
#####
/sbin/iptables -F
/sbin/iptables -X

## Good IP Lookup Tool https://www.ultratools.com/tools/ipWhoisLookupResult

#####
#     Add your home ip into the xxx.xxx.xxx.xxx where you access the server from the most.
#####
# /sbin/iptables -A INPUT -s xxx.xxx.xxx.xxx -j ACCEPT

#####
#     USA Spammers (consider unblocking in future)
#####                                               ## ISP / Provider       | Location          | Date Added
#/sbin/iptables -A INPUT -s 23.97.75.130 -j DROP     ## Microsoft            | Redmond, WA       | 20150627
#/sbin/iptables -A INPUT -s 24.156.121.40 -j DROP    ## Cable Vision         | Flagstaff, AZ     | 20150621
#/sbin/iptables -A INPUT -s 74.208.218.138 -j DROP   ## 1&1                  | Chesterbrook, PA  | 20150624
#/sbin/iptables -A INPUT -s 96.10.107.162 -j DROP    ## Time Warner          | Herndon, VA       | 20150624
#/sbin/iptables -A INPUT -s 118.139.160.153 -j DROP  ## GoDaddy              |                   | 20150621
#/sbin/iptables -A INPUT -s 173.0.122.58 -j DROP     ##                      | VA                | 20150621
#/sbin/iptables -A INPUT -s 192.3.170.209 -j DROP    ## New Wave NetConnect  | Los Angelos, CA   | 20150628
#/sbin/iptables -A INPUT -s 209.126.119.15 -j DROP   ## Hosting Solutions    | Saint Louis, MO   | 20150709

#####
#     International Hackers
#####/
/sbin/iptables -A INPUT -s 2.232.9.219 -j DROP
/sbin/iptables -A INPUT -s 5.63.154.147 -j DROP
/sbin/iptables -A INPUT -s 5.63.155.178 -j DROP
/sbin/iptables -A INPUT -s 5.79.71.5 -j DROP
/sbin/iptables -A INPUT -s 12.161.62.186 -j DROP #2020-11-04
/sbin/iptables -A INPUT -s 13.111.102.7 -j DROP #2020-11-04
/sbin/iptables -A INPUT -s 14.63.161.216 -j DROP
/sbin/iptables -A INPUT -s 27.254.44.43 -j DROP
/sbin/iptables -A INPUT -s 31.216.35.17 -j DROP
/sbin/iptables -A INPUT -s 36.225.31.225 -j DROP
/sbin/iptables -A INPUT -s 37.46.150.0/24 -j DROP #2020-11-03
/sbin/iptables -A INPUT -s 37.49.225.0/24 -j DROP #2020-11-04
/sbin/iptables -A INPUT -s 41.160.6.194 -j DROP
/sbin/iptables -A INPUT -s 45.154.35.213 -j DROP
/sbin/iptables -A INPUT -s 45.154.255.147 -j DROP #2020-11-04
/sbin/iptables -A INPUT -s 58.67.199.9 -j DROP
/sbin/iptables -A INPUT -s 58.215.160.219 -j DROP
/sbin/iptables -A INPUT -s 59.46.220.178 -j DROP
/sbin/iptables -A INPUT -s 60.28.186.142 -j DROP
/sbin/iptables -A INPUT -s 61.91.80.107 -j DROP
/sbin/iptables -A INPUT -s 62.109.1.11 -j DROP
/sbin/iptables -A INPUT -s 62.109.13.87 -j DROP
/sbin/iptables -A INPUT -s 62.128.53.156 -j DROP
/sbin/iptables -A INPUT -s 62.149.158.72 -j DROP
/sbin/iptables -A INPUT -s 62.149.158.78 -j DROP
/sbin/iptables -A INPUT -s 62.149.158.84 -j DROP
/sbin/iptables -A INPUT -s 62.210.7.49 -j DROP
/sbin/iptables -A INPUT -s 64.207.146.149 -j DROP
/sbin/iptables -A INPUT -s 66.96.190.5 -j DROP
/sbin/iptables -A INPUT -s 69.24.79.113 -j DROP
/sbin/iptables -A INPUT -s 72.167.234.245 -j DROP
/sbin/iptables -A INPUT -s 72.167.234.236 -j DROP
/sbin/iptables -A INPUT -s 75.127.12.170 -j DROP
/sbin/iptables -A INPUT -s 77.55.117.98 -j DROP
/sbin/iptables -A INPUT -s 77.73.98.245 -j DROP
/sbin/iptables -A INPUT -s 77.221.130.199 -j DROP
/sbin/iptables -A INPUT -s 77.236.99.200 -j DROP
/sbin/iptables -A INPUT -s 77.239.63.226 -j DROP
/sbin/iptables -A INPUT -s 78.24.218.136 -j DROP
/sbin/iptables -A INPUT -s 78.24.220.226 -j DROP
/sbin/iptables -A INPUT -s 78.38.35.18 -j DROP
/sbin/iptables -A INPUT -s 79.60.10.49 -j DROP
/sbin/iptables -A INPUT -s 80.82.64.116 -j DROP
/sbin/iptables -A INPUT -s 80.91.193.9 -j DROP
/sbin/iptables -A INPUT -s 80.82.77.139 -j DROP # 2020-11-07
/sbin/iptables -A INPUT -s 81.19.145.18 -j DROP
/sbin/iptables -A INPUT -s 81.31.35.53 -j DROP
/sbin/iptables -A INPUT -s 81.169.146.193 -j DROP
/sbin/iptables -A INPUT -s 81.169.181.241 -j DROP
/sbin/iptables -A INPUT -s 82.146.41.131 -j DROP
/sbin/iptables -A INPUT -s 82.146.44.154 -j DROP
/sbin/iptables -A INPUT -s 82.165.139.6 -j DROP
/sbin/iptables -A INPUT -s 82.165.141.62 -j DROP
/sbin/iptables -A INPUT -s 82.194.91.243 -j DROP
/sbin/iptables -A INPUT -s 83.234.207.60 -j DROP
/sbin/iptables -A INPUT -s 85.25.144.236 -j DROP
/sbin/iptables -A INPUT -s 85.95.232.5 -j DROP
/sbin/iptables -A INPUT -s 85.234.146.153 -j DROP
/sbin/iptables -A INPUT -s 87.230.18.23 -j DROP
/sbin/iptables -A INPUT -s 87.230.51.102 -j DROP
/sbin/iptables -A INPUT -s 89.184.74.79 -j DROP
/sbin/iptables -A INPUT -s 89.184.76.22 -j DROP
/sbin/iptables -A INPUT -s 89.184.79.147 -j DROP
/sbin/iptables -A INPUT -s 89.248.172.21 -j DROP
/sbin/iptables -A INPUT -s 90.168.208.54 -j DROP
/sbin/iptables -A INPUT -s 90.183.161.210 -j DROP
/sbin/iptables -A INPUT -s 91.82.237.28 -j DROP
/sbin/iptables -A INPUT -s 91.185.185.133 -j DROP
/sbin/iptables -A INPUT -s 91.201.40.60 -j DROP
/sbin/iptables -A INPUT -s 91.204.68.10 -j DROP
/sbin/iptables -A INPUT -s 91.236.75.224 -j DROP
/sbin/iptables -A INPUT -s 92.63.105.41 -j DROP
/sbin/iptables -A INPUT -s 93.174.93.20 -j DROP
/sbin/iptables -A INPUT -s 93.174.93.149 -j DROP
/sbin/iptables -A INPUT -s 93.191.155.217 -j DROP
/sbin/iptables -A INPUT -s 94.245.155.4 -j DROP
/sbin/iptables -A INPUT -s 95.97.251.194 -j DROP
/sbin/iptables -A INPUT -s 96.31.87.32 -j DROP
/sbin/iptables -A INPUT -s 95.0.216.130 -j DROP
/sbin/iptables -A INPUT -s 95.110.155.185 -j DROP
/sbin/iptables -A INPUT -s 95.167.71.29 -j DROP
/sbin/iptables -A INPUT -s 95.211.43.41 -j DROP
/sbin/iptables -A INPUT -s 98.130.1.171 -j DROP
/sbin/iptables -A INPUT -s 103.8.124.61 -j DROP
/sbin/iptables -A INPUT -s 106.75.254.109 -j DROP
/sbin/iptables -A INPUT -s 110.170.133.22 -j DROP
/sbin/iptables -A INPUT -s 112.65.229.76 -j DROP
/sbin/iptables -A INPUT -s 112.187.199.184 -j DROP
/sbin/iptables -A INPUT -s 112.217.177.82 -j DROP
/sbin/iptables -A INPUT -s 113.105.139.204 -j DROP
/sbin/iptables -A INPUT -s 113.106.228.76 -j DROP
/sbin/iptables -A INPUT -s 113.174.159.194 -j DROP
/sbin/iptables -A INPUT -s 114.24.15.47 -j DROP
/sbin/iptables -A INPUT -s 114.143.216.115 -j DROP
/sbin/iptables -A INPUT -s 115.28.162.59 -j DROP
/sbin/iptables -A INPUT -s 115.78.231.17 -j DROP
/sbin/iptables -A INPUT -s 115.88.36.83 -j DROP
/sbin/iptables -A INPUT -s 116.0.20.161 -j DROP
/sbin/iptables -A INPUT -s 117.54.12.70 -j DROP
/sbin/iptables -A INPUT -s 117.79.146.58 -j DROP
/sbin/iptables -A INPUT -s 118.69.135.21 -j DROP
/sbin/iptables -A INPUT -s 118.139.178.236 -j DROP
/sbin/iptables -A INPUT -s 118.166.246.38 -j DROP
/sbin/iptables -A INPUT -s 118.186.217.122 -j DROP
/sbin/iptables -A INPUT -s 118.192.77.102 -j DROP
/sbin/iptables -A INPUT -s 118.194.132.172 -j DROP
/sbin/iptables -A INPUT -s 123.59.62.36 -j DROP
/sbin/iptables -A INPUT -s 125.69.80.32 -j DROP
/sbin/iptables -A INPUT -s 133.202.99.245 -j DROP
/sbin/iptables -A INPUT -s 139.0.11.50 -j DROP
/sbin/iptables -A INPUT -s 141.101.6.186 -j DROP
/sbin/iptables -A INPUT -s 141.8.194.36 -j DROP
/sbin/iptables -A INPUT -s 141.255.181.43 -j DROP
/sbin/iptables -A INPUT -s 143.95.81.30 -j DROP
/sbin/iptables -A INPUT -s 144.76.92.177 -j DROP
/sbin/iptables -A INPUT -s 144.76.116.180 -j DROP
/sbin/iptables -A INPUT -s 150.67.4.236 -j DROP
/sbin/iptables -A INPUT -s 151.80.93.2 -j DROP
/sbin/iptables -A INPUT -s 162.142.125.51 -j DROP #2020-11-04
/sbin/iptables -A INPUT -s 162.209.69.74 -j DROP
/sbin/iptables -A INPUT -s 162.250.126.81 -j DROP
/sbin/iptables -A INPUT -s 168.1.13.117 -j DROP
/sbin/iptables -A INPUT -s 170.130.34.0/24 -j DROP #2020-11-03
/sbin/iptables -A INPUT -s 170.130.51.0/24 -j DROP #2020-11-07
/sbin/iptables -A INPUT -s 176.74.217.6 -j DROP
/sbin/iptables -A INPUT -s 177.3.150.222 -j DROP
/sbin/iptables -A INPUT -s 178.15.39.2 -j DROP
/sbin/iptables -A INPUT -s 178.33.5.66 -j DROP
/sbin/iptables -A INPUT -s 178.124.129.180 -j DROP
/sbin/iptables -A INPUT -s 178.208.80.78 -j DROP
/sbin/iptables -A INPUT -s 178.239.176.61 -j DROP
/sbin/iptables -A INPUT -s 182.100.67.112 -j DROP
/sbin/iptables -A INPUT -s 183.82.109.88 -j DROP
/sbin/iptables -A INPUT -s 185.20.227.21 -j DROP
/sbin/iptables -A INPUT -s 185.27.37.13 -j DROP
/sbin/iptables -A INPUT -s 185.40.104.7 -j DROP
/sbin/iptables -A INPUT -s 185.63.188.78 -j DROP
/sbin/iptables -A INPUT -s 185.68.109.161 -j DROP
/sbin/iptables -A INPUT -s 185.220.205.213 -j DROP
/sbin/iptables -A INPUT -s 186.101.2.130 -j DROP
/sbin/iptables -A INPUT -s 186.121.210.50 -j DROP
/sbin/iptables -A INPUT -s 186.147.233.125 -j DROP
/sbin/iptables -A INPUT -s 188.64.170.250 -j DROP
/sbin/iptables -A INPUT -s 188.65.202.147 -j DROP
/sbin/iptables -A INPUT -s 188.226.148.204 -j DROP
/sbin/iptables -A INPUT -s 190.12.31.42 -j DROP
/sbin/iptables -A INPUT -s 190.146.1.187 -j DROP
/sbin/iptables -A INPUT -s 190.196.64.42 -j DROP
/sbin/iptables -A INPUT -s 192.99.152.37 -j DROP
/sbin/iptables -A INPUT -s 192.201.227.77 -j DROP
/sbin/iptables -A INPUT -s 192.232.193.130 -j DROP
/sbin/iptables -A INPUT -s 192.241.207.112 -j DROP
/sbin/iptables -A INPUT -s 192.241.234.29 -j DROP
/sbin/iptables -A INPUT -s 192.241.237.144 -j DROP #2020-11-04
/sbin/iptables -A INPUT -s 192.254.199.195 -j DROP
/sbin/iptables -A INPUT -s 192.254.221.45 -j DROP
/sbin/iptables -A INPUT -s 193.189.116.22 -j DROP
/sbin/iptables -A INPUT -s 193.189.149.112 -j DROP
/sbin/iptables -A INPUT -s 193.201.227.77 -j DROP
/sbin/iptables -A INPUT -s 194.0.91.188 -j DROP
/sbin/iptables -A INPUT -s 194.58.102.69 -j DROP
/sbin/iptables -A INPUT -s 194.177.12.243 -j DROP
/sbin/iptables -A INPUT -s 194.177.21.100 -j DROP
/sbin/iptables -A INPUT -s 194.186.66.118 -j DROP #2020-11-04
/sbin/iptables -A INPUT -s 195.3.144.83 -j DROP
/sbin/iptables -A INPUT -s 195.5.208.44 -j DROP
/sbin/iptables -A INPUT -s 195.20.109.67 -j DROP
/sbin/iptables -A INPUT -s 195.137.213.227 -j DROP
/sbin/iptables -A INPUT -s 195.149.74.203 -j DROP
/sbin/iptables -A INPUT -s 195.154.173.207 -j DROP
/sbin/iptables -A INPUT -s 195.208.201.194 -j DROP
/sbin/iptables -A INPUT -s 195.224.173.133 -j DROP #2020-11-04
/sbin/iptables -A INPUT -s 198.1.88.230 -j DROP
/sbin/iptables -A INPUT -s 198.74.100.10 -j DROP
/sbin/iptables -A INPUT -s 198.154.248.155 -j DROP
/sbin/iptables -A INPUT -s 199.167.151.201 -j DROP
/sbin/iptables -A INPUT -s 201.147.155 -j DROP
/sbin/iptables -A INPUT -s 202.1.235.16 -j DROP
/sbin/iptables -A INPUT -s 202.46.14.130 -j DROP
/sbin/iptables -A INPUT -s 202.112.113.26 -j DROP
/sbin/iptables -A INPUT -s 202.183.165.86 -j DROP
/sbin/iptables -A INPUT -s 207.58.180.95 -j DROP
/sbin/iptables -A INPUT -s 207.58.188.16 -j DROP
/sbin/iptables -A INPUT -s 210.14.79.228 -j DROP
/sbin/iptables -A INPUT -s 210.26.24.9 -j DROP
/sbin/iptables -A INPUT -s 210.77.132.2 -j DROP
/sbin/iptables -A INPUT -s 212.65.7.2 -j DROP
/sbin/iptables -A INPUT -s 212.83.176.23 -j DROP
/sbin/iptables -A INPUT -s 212.83.177.91 -j DROP
/sbin/iptables -A INPUT -s 212.227.15.22 -j DROP
/sbin/iptables -A INPUT -s 213.9.217.32 -j DROP
/sbin/iptables -A INPUT -s 213.115.168.222 -j DROP
/sbin/iptables -A INPUT -s 213.163.92.88 -j DROP
/sbin/iptables -A INPUT -s 213.174.55.119 -j DROP
/sbin/iptables -A INPUT -s 216.70.88.113 -j DROP
/sbin/iptables -A INPUT -s 216.97.224.205 -j DROP
/sbin/iptables -A INPUT -s 216.157.16.246 -j DROP
/sbin/iptables -A INPUT -s 217.116.197.250 -j DROP
/sbin/iptables -A INPUT -s 217.160.4.59 -j DROP
/sbin/iptables -A INPUT -s 217.170.195.88 -j DROP
/sbin/iptables -A INPUT -s 218.4.111.78 -j DROP
/sbin/iptables -A INPUT -s 218.4.174.100 -j DROP
/sbin/iptables -A INPUT -s 218.65.30.73 -j DROP
/sbin/iptables -A INPUT -s 218.87.111.109 -j DROP
/sbin/iptables -A INPUT -s 218.87.111.110 -j DROP
/sbin/iptables -A INPUT -s 218.200.188.213 -j DROP
/sbin/iptables -A INPUT -s 219.144.162.174 -j DROP
/sbin/iptables -A INPUT -s 221.179.89.90 -j DROP
/sbin/iptables -A INPUT -s 222.85.127.205 -j DROP
/sbin/iptables -A INPUT -s 222.122.52.157 -j DROP
/sbin/iptables -A INPUT -s 222.186.30.109 -j DROP
/sbin/iptables -A INPUT -s 222.197.129.60 -j DROP
/sbin/iptables -A INPUT -s 222.234.223.222 -j DROP

#####
#     Fail2Ban
#####
#/sbin/iptables -N fail2ban-ssh
#/sbin/iptables -A fail2ban-ssh -j RETURN
#/sbin/iptables -I INPUT -p tcp --dport ssh -j fail2ban-ssh

#####
#     Accept packets belonging to established and related connections
#####
/sbin/iptables -A INPUT  -p icmp -m state --state ESTABLISHED,RELATED     -j ACCEPT
/sbin/iptables -A INPUT  -m state --state ESTABLISHED                     -j ACCEPT
/sbin/iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
/sbin/iptables -A OUTPUT -p icmp -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
/sbin/iptables -A OUTPUT -m state --state NEW,ESTABLISHED                 -j ACCEPT

##### 
#     Allow SSH
#####
/sbin/iptables -A INPUT -p tcp --dport 22 -j ACCEPT

#####
#     Allow HTTP (80)
#####
/sbin/iptables -A INPUT -p tcp --dport 80 -j ACCEPT
/sbin/iptables -A INPUT -p tcp --dport 443 -j ACCEPT

#####
#     MailServer
#####
/sbin/iptables -A INPUT -p tcp --dport 25 -j ACCEPT 	#SMTP
/sbin/iptables -A INPUT -p tcp --dport 465 -j ACCEPT	#SMTP
#/sbin/iptables -A INPUT -p tcp --dport 587 -j ACCEPT	#SMTP
#/sbin/iptables -A INPUT -p tcp --dport 143 -j ACCEPT	#IMAP
/sbin/iptables -A INPUT -p tcp --dport 993 -j ACCEPT	#IMAP
#/sbin/iptables -A INPUT -p tcp --dport 110 -j ACCEPT	#POP3
#/sbin/iptables -A INPUT -p tcp --dport 995 -j ACCEPT	#POP3

#####
#     Allow Localhost Access
#####
/sbin/iptables -A INPUT -i lo -j ACCEPT

#####
#     Set Defaults
#####
/sbin/iptables -P INPUT DROP
/sbin/iptables -P FORWARD DROP
/sbin/iptables -P OUTPUT ACCEPT



#####
#     Save the Settings to the iptables
#####
# /sbin/iptables-save > /etc/iptables/rules.v4
