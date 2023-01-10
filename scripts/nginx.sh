#!/usr/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install nginx -y

sudo apt-get install ca-certificates apt-transport-https software-properties-common wget curl lsb-release -y

curl -sSL https://packages.sury.org/php/README.txt | sudo bash -x

sudo apt update && sudo apt upgrade -y

sudo apt install php8.1 php8.1-fpm php8.1-cli -y




