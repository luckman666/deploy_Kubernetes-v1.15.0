#!/bin/bash
source ./base.config
yum -y install chrony && \
sed -i "7i server  $masterip iburst\nallow $cluster_network" /etc/chrony.conf
systemctl start chronyd.service && systemctl enable chronyd.service
systemctl restart chronyd.service
