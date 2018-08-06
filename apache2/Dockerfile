FROM ubuntu

LABEL maintainer="oriol.amat@gmail.com"

RUN apt-get update
RUN apt-get install -y apache2 

COPY html /var/www/html

ENV variable_entorno contenido_variable_entorno

RUN echo "$variable_entorno" > var/www/html/var_env.html

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]