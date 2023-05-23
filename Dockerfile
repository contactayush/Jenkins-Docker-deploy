FROM tomcat:9
MAINTAINER ayush shah
WORKDIR /usr/local/tomcat/bin
RUN ./startup.sh
CMD ["catalina.sh","run"]
EXPOSE 8081
COPY gameoflife.war /usr/local/tomcat/webapps
