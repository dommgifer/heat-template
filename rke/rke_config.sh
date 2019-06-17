#!/bin/bash -v
wget https://github.com/rancher/rke/releases/download/v0.2.4/rke_linux-amd64
mv rke_linux-amd64 /usr/bin/rke
chmod +x /usr/bin/rke
wget https://raw.githubusercontent.com/dommgifer/heat-template/master/rke/cluster.yml 
mv cluster.yml /opt/cluster.yml
sed -e "s,%kube_version%,${kube_version},g" -i /opt/cluster.yml
sed -e "s,%kube_master1_ip%,${kube_master_ip},g" -i /opt/cluster.yml
sed -e "s,%kube_minion1_ip%,${kube_minion},g" -i /opt/cluster.yml
