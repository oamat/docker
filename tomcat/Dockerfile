FROM tomcat:9.0.10-jre8-alpine

LABEL maintainer="oriol.amat@gmail.com"
LABEL version="1.0"
LABEL description="Tomcat image test"


RUN echo ${TOMCAT_HOME}
RUN echo ${CATALINA_HOME}
# Copy a website,
COPY html ${CATALINA_HOME}/webapps/ROOT  

EXPOSE 8080

# It isn't necessary the CMD because we use the Nginx image. 
