#!/bin/bash -v
ssh-keygen -t rsa -N "" -f /root/.ssh/id_rsa
echo ${password} > /opt/sshpass.txt
apt install sshpass -y
sudo sshpass -f /opt/sshpass.txt ssh-copy-id -i /root/.ssh/id_rsa.pub -o StrictHostKeyChecking=no  ubuntu@${kube_master_ip}
