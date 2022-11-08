#!/usr/bin/bash

sudo rm /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg

sudo rm /etc/apt/sources.list.d/pgdg.list

sudo rm /etc/apt/sources.list.d/pgdg-testing.list

sudo rm /etc/apt/sources.list.d/pgdgl-testing.list

sudo apt install dirmngr ca-certificates software-properties-common gnupg gnupg2 apt-transport-https curl -y

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo apt-get update

sudo apt-get -y install postgresql

#sudo curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null

#sudo echo deb [arch=amd64,arm64,ppc64el signed-by=/etc/apt/trusted.gpg.d/apt.postgresql.org.gpg] http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main | sudo tee -a /etc/apt/sources.list.d/pgdg.list

#sudo echo deb [arch=amd64,arm64,ppc64el signed-by=/etc/apt/trusted.gpg.d/apt.postgresql.org.gpg] http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg-snapshot main | sudo tee -a /etc/apt/sources.list.d/pgdg-testing.list

#sudo echo deb [arch=amd64,arm64,ppc64el signed-by=/etc/apt/trusted.gpg.d/apt.postgresql.org.gpg] http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg-testing main | sudo tee /etc/apt/sources.list.d/pgdgl-testing.list

#sudo apt update
