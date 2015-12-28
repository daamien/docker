#vim: set ft=dockerfile
 
FROM postgres:9.5 
MAINTAINER damien clochard <damien.clochard@dalibo.com>

WORKDIR /usr/local/src

RUN apt-get update 
RUN apt-get install -y nodejs ruby rubygems ruby-dev bundler wget unzip libpq-dev
RUN wget https://github.com/daamien/PostgreSQL-Dashboard/archive/master.zip
RUN unzip master.zip
#RUN cd Pos&tgreSQL-Dashboard-master && bundle

WORKDIR /usr/local/src/PostgreSQL-Dashboard-master

RUN bundle

#
RUN     cd /tmp && \
        pg_createcluster 9.5 demo && \
	/etc/init.d/postgresql start && \
	sudo -u postgres createuser --no-superuser --no-createdb --no-createrole demo && \
	sudo -u postgres createdb demo --owner demo && \
	sudo -u postgres psql -c "ALTER ROLE demo PASSWORD 'demo'" 
	

ADD config_postgresql.rb /usr/local/src/PostgreSQL-Dashboard-master/

EXPOSE 3030 5432 

RUN dashing start
