FROM tomcat:latest
EXPOSE 8080
ADD **/*.war usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
