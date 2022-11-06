#!/usr/bin/bash

sudo apt install apt-transport-https lsb-release ca-certificates wget -y

sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'

sudo apt update -y

sudo apt upgrade -y
