#!/bin/bash
rke up --config /opt/cluster.yml
mkdir -p  /home/ubuntu/.kube
cp /opt/kube_config_cluster.yml /home/ubuntu/.kube/config
chown ubuntu:ubuntu /home/ubuntu/.kube/config
wget https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl
mv kubectl /usr/bin/kubectl
chmod +x /usr/bin/kubectl

