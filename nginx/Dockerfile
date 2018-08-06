FROM nginx

LABEL maintainer="oriol.amat@gmail.com"
LABEL version="1.0"
LABEL description="Nginx image test"


WORKDIR /usr/share/nginx/html

# Copy a website, with WORKDIR I can use "." to referer it :
COPY html .   

VOLUME /var/log/nginx 

EXPOSE 80

# It isn't necessary the CMD because we use the Nginx image. 
CMD   nginx -g 'daemon off;'