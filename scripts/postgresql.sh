#!/usr/bin/bash

sudo apt update

sudo apt install postgresql-client-15 postgresql-15 -y

sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'root';"

#sudo -u postgres psql -c "CREATE USER phil_altschool WITH PASSWORD 'p@ssw0rd';"

#sudo -u postgres psql -c "CREATE DATABASE phil_altschool;"

#sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE phil_altschool to phil_altschool;"

#sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO phil_altschool"

sudo systemctl restart postgresql 





