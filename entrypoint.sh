#!/bin/sh

sudo sed -i "s/GO_SERVER=127.0.0.1/GO_SERVER=${GO_SERVER_IP}/g" /etc/default/go-agent
ssh-keygen -N "" -f /var/go/.ssh/id_rsa
sudo echo -e "Host * \n   StrictHostKeyChecking no" > $HOME/.ssh/config
sudo service docker start
sudo service go-agent start
