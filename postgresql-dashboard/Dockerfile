#vim: set ft=dockerfile
 
FROM postgres:9.5 
MAINTAINER damien clochard <damien.clochard@dalibo.com>

WORKDIR /usr/local/src

RUN apt-get update 
RUN apt-get install -y nodejs ruby rubygems ruby-dev bundler wget unzip
RUN wget https://github.com/daamien/PostgreSQL-Dashboard/archive/master.zip
RUN unzip master.zip
RUN cd PostgreSQL-Dashboard-master
RUN bundle

ADD config_postgresql.rb /usr/local/src/PostgreSQL-Dashboard-master/

RUN dashing start
