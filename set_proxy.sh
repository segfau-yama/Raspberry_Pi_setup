#!/bin/bash

PROXY_HOST=proxy
PROXY_PORT=8080
read -p "UserName: " USER_NAME
read -sp "Possword: " PASSWORD

echo "set proxy"

export http_proxy=http://$USER_NAME:$PASSWORD@$PROXY_HOST:$PROXY_PORT/
export https_proxy=http://$USER_NAME:$PASSWORD@$PROXY_HOST:$PROXY_PORT/
export ftp_proxy=http://$USER_NAME:$PASSWORD@$PROXY_HOST:$PROXY_PORT/
