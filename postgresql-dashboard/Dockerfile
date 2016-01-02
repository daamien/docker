#vim: set ft=dockerfile
 
FROM postgres:9.5 
MAINTAINER damien clochard <damien.clochard@dalibo.com>

WORKDIR /usr/local/src

RUN 	apt-get update \ 
	&& apt-get install -y nodejs ruby rubygems ruby-dev bundler wget unzip libpq-dev \
	&& wget https://github.com/daamien/PostgreSQL-Dashboard/archive/master.zip \
	&& unzip master.zip \
	&& cd PostgreSQL-Dashboard-master \
	&& bundle 
	
ADD setup_pgdashboard.sh /docker-entrypoint-initdb.d/
ADD config_postgresql.rb /usr/local/src/PostgreSQL-Dashboard-master/

EXPOSE 3030 5432 

