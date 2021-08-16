#!/bin/bash

echo "Install LetsEncrypt"
apt-get -y install letsencrypt
mkdir "$HOME/certs/"

echo "Create a network: proxynet"
docker network create proxynet

echo "Building docker-compose proxy"
docker-compose up -d