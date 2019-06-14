#!/bin/bash -v
curl https://releases.rancher.com/install-docker/18.09.2.sh | sh
sudo usermod -aG docker ubuntu
