FROM centos

LABEL maintainer="oriol.amat@gmail.com"
LABEL version="1.0"
LABEL description="PHP  SSL image test"

RUN yum -y install httpd php php-cli php-comon openssl mod_ssl

WORKDIR /var/www/html

# Copy a website, with WORKDIR I can use "." to referer it :
COPY php .   

# Copy ssl.conf in default ssl apache
COPY certs/ssl.conf /etc/httpd/conf.d/default.conf

# Copy certs in container
COPY certs/docker.crt /docker.crt
COPY certs/docker.key /docker.key 


EXPOSE 443


CMD apachectl -DFOREGROUND