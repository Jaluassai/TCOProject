apt install keepalived -y
touch /etc/keepalived/keepalived.conf

cp /vagrant/sh/check_nginx.sh /bin/


### MASTER
if [ $(hostname) == "load-balancer2" ] ; then
    cp /vagrant/cfg/keepalived.conf.backup /etc/keepalived/keepalived.conf
else
    cp /vagrant/cfg/keepalived.conf.master /etc/keepalived/keepalived.conf
fi

##BACKUP


sudo chmod 755 /bin/check_nginx.sh