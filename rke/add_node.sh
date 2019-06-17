#!/bin/bash -v
echo $KUBE_MINION_IP > /opt/ip.txt
#wget https://raw.githubusercontent.com/dommgifer/heat-template/master/rke/ssh.sh
#mv ssh.sh /opt/ssh.sh
#for ((i=1; i<=$count; i++))
#do
#    echo "sudo sshpass -f /opt/sshpass.txt ssh-copy-id -i /root/.ssh/id_rsa.pub -o StrictHostKeyChecking=no  ubuntu@\${kube_minion$i}" >> /opt/ssh.sh ;
#done
