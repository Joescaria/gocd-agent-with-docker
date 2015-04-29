Go agent Image
=================

This provides a Go agent with following on it

- Java 8
- Docker 

## Installation

The installation is as simple as downloading any other docker image.

        docker pull mkulkarni/go-agent

## Usage

Go agent image ensures the following
- Go agent runs against Go server started on your box
- Go agent persists the data if container were to stop running.

You can get the IP address of the Go Server by running the following

	docker exec container-id-of-go-server ifconfig

Note down the IP address of the Go Server. This is required when you run Go Agent.

Go agent stores its data at the following location

	/var/lib/go-agent        contains the binaries
	/usr/share/go-agent      contains the start script
	/var/log/go-agent        contains the agent logs

This Go agent data needs to be persisted. The following persists the data on the host at location of your choice. 

	docker run -d --privileged 
	-e "GO_SERVER_IP=go-server-ip-address-from-before" \
        -e "AWS_ACCESS_KEY=acces_key" \
        -e "AWS_SECRET_KEY=secret_key" \
        -e "REGION=region" \ 
	-v location-on-host:/var/lib/go-agent \
	-v location-on-host:/usr/share/go-agent \
	-v location-on-host:/var/log/go-agent \ 
	mkulkarni/go-agent

## Docker versions

Docker 1.3 onwards are supported
