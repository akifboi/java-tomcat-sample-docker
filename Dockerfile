FROM tomcat:latest
EXPOSE 8080
RUN **/*.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
