FROM centos

LABEL maintainer="oriol.amat@gmail.com"
LABEL version="1.0"
LABEL description="PHP  in Centos image test"

RUN yum -y install httpd php php-cli php-comon 

WORKDIR /var/www/html

# Copy a website, with WORKDIR I can use "." to referer it :
COPY php .   

EXPOSE 80


CMD apachectl -DFOREGROUND