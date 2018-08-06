FROM ubuntu

LABEL maintainer="oriol.amat@gmail.com"

RUN apt-get update
RUN apt-get install -y apache2 

COPY html /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]