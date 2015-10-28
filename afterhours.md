### Launching a VPS on DigitalOcean (DEMO)

### Why I choose Ubuntu over CentOS

### User Accounts
Why? Because eventually we're going to disable root

`adduser demo`

`gpasswd -a demo sudo`

`ssh-copy-id demo@SERVER_IP_ADDRESS`

### SSH Keys

### Configure SSH Settings (DEMO)
` vim /etc/ssh/sshd_config`
- Copy your SSH Key to the server
- Disable Root Login
- Disallow Passwords
- This doesn't cover security from the actual machine

### Firewall
- iptables
- fail2ban
- automation scripts (DEMO)

List All Chained Rules
`iptables -L`

List ALl rules as if they were commands
`iptables -S`

Flush your Settings to Default
`iptables -F`

First Command
`iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT`
- -A Appends the Rule to the end
- -m tells iptables we want to use a module
- conntrack - This module gives access to commands that can be used to make decisions based on the packet's relationship to previous connections.
- --cstate - made available to conntrack module -> allows us to match packets based on how they are related to packets we've seen before
- -j ACCEPT

`iptables -I INPUT 1 -i lo -j ACCEPT`

Need to know the line lumber?
`iptables -L --line-numbers`

Default Policy
```
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT
```

Persistence
`apt-get install iptables-persistent`

`invoke-rc.d iptables-persistent save`

### Install Nginx
`apt-get install nginx`

Should Work

`ensure that nginx will start when the server is restarted`
update-rc.d nginx defaults

```
server {
  listen 80;
  listen [::]:80;

  server_name deploy.codydaig.me;

  location / {
    proxy_pass http://127.0.0.1:7777/;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host $host;
    proxy_cache_bypass $http_upgrade;
  }
}
```

### Install Node
`curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -`
`apt-get install -y nodejs`

### Install PM2
`npm install pm2 -g`

### Install Mongo (or another database)
`apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10`
`echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list`
`apt-get update`
`apt-get install -y mongodb-org`

`service mongod start`


