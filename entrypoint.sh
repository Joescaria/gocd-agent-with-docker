#!/bin/sh

sed -i "s/GO_SERVER=127.0.0.1/GO_SERVER=${GO_SERVER_IP}/g" /etc/default/go-agent
service docker start
service go-agent start
