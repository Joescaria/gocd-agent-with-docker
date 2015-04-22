#!/bin/sh

echo "[default] \naws_access_key_id=${AWS_ACCESS_KEY} \naws_secret_access_key=${AWS_SECRET_KEY}" > $HOME/.aws/credentials
echo "[default] \nregion=${REGION}" > $HOME/.aws/config
sed -i "s/GO_SERVER=127.0.0.1/GO_SERVER=${GO_SERVER_IP}/g" /etc/default/go-agent
service docker start
service go-agent start
