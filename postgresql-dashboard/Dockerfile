#vim: set ft=dockerfile
 
FROM ubuntu:15.10 
MAINTAINER damien clochard <damien.clochard@dalibo.com>

WORKDIR /usr/local/src

RUN 	apt-get update \ 
	&& apt-get install -y nodejs ruby rubygems ruby-dev bundler wget unzip libpq-dev \
	&& wget https://github.com/daamien/PostgreSQL-Dashboard/archive/master.zip \
	&& unzip master.zip \
	&& cd PostgreSQL-Dashboard-master \
	&& bundle \
        && apt-get purge -y --auto-remove gcc jq make wget unzip \
        && rm -rf /var/lib/apt/lists/* 
	
ADD config_postgresql.rb.sample /usr/local/src/PostgreSQL-Dashboard-master/

ADD setup_pgdashboard.sh  /usr/local/src/PostgreSQL-Dashboard-master/

CMD ["/usr/local/src/PostgreSQL-Dashboard-master/setup_pgdashboard.sh"]

EXPOSE 3030  

