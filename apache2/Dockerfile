FROM ubuntu

LABEL maintainer="oriol.amat@gmail.com"
LABEL version="1.0"
LABEL description="Apache2 image test"


RUN apt-get update
RUN apt-get install -y apache2 


WORKDIR /var/www/html

# Copy a website, with WORKDIR I can use "." to referer it :
COPY html .   

ENV variable_entorno contenido_variable_entorno

# Put content env_var in file: with WORKDIR I can directly the name I want copy ther :
RUN echo "$variable_entorno" > /var/www/html/var_env.html

# execute whoami command in file :
RUN echo "$(whoami)" > /var/www/html/user.html

# Add new user  :
RUN useradd newuser

# Give to newuser permisions folder :
RUN chown newuser /var/www/html -R

# change user
USER newuser

# execute whoami command in file :
RUN echo "$(whoami)" > /var/www/html/usernew.html

# change user to root
USER root

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]