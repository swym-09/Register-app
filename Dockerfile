FROM tomcat:10.1-jdk21-temurin-jammy

RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

COPY webapp/target/*.war /usr/local/tomcat/webapps/
