#!/bin/bash
set -e

cd /usr/local/src/PostgreSQL-Dashboard-master/	

sed "s/POSTGRES_PORT_5432_TCP_ADDR/$POSTGRES_PORT_5432_TCP_ADDR/" config_postgresql.rb.sample > config_postgresql.rb 

dashing start

