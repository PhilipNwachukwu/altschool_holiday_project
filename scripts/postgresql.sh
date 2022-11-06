#!/usr/bin/bash

sudo apt install dirmngr ca-certificates software-properties-common gnupg gnupg2 apt-transport-https curl -y

sudo curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null


#sudo echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > 
#/etc/apt/sources.list.d/pgdg.list'

sudo echo deb [arch=amd64,arm64,ppc64el signed-by=/etc/apt/trusted.gpg.d/apt.postgresql.org.gpg] http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main | sudo tee -a /etc/apt/sources.list.d/pgdg.list

sudo echo deb [arch=amd64,arm64,ppc64el signed-by=/etc/apt/trusted.gpg.d/apt.postgresql.org.gpg] http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg-snapshot main | sudo tee -a /etc/apt/sources.list.d/pgdg-testing.list

sudo echo deb [arch=amd64,arm64,ppc64el signed-by=/etc/apt/trusted.gpg.d/apt.postgresql.org.gpg] http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg-testing main | sudo tee /etc/apt/sources.list.d/pgdgl-testing.list

sudo apt update

sudo apt install postgresql-client-15 postgresql-15 -y

sudo systemctl start postgresql 

sudo -u postgres createdb -w laravel      

sudo systemctl restart postgresql
