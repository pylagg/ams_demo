FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/pylagg/ams_demo.git

FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/ams_demo /app 
RUN mvn install 

FROM tomcat:8.5-alpine 
MAINTAINER Payal Aggarwal
COPY --from=0 /app/ams_demo/tomcat-users.xml /usr/local/tomcat/conf/
COPY --from=0 /app/ams_demo/context.xml /usr/local/tomcat/webapps/manager/META-INF/
COPY --from=1 */target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
