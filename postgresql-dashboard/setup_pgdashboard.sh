#!/bin/bash
set -e

sudo -u postgres createuser --no-superuser --no-createdb --no-createrole demo 
sudo -u postgres createdb demo --owner demo  
sudo -u postgres psql -c "ALTER ROLE demo PASSWORD 'demo';" 

cd /usr/local/src/PostgreSQL-Dashboard-master/	
dashing start
