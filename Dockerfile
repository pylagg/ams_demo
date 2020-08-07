
#FROM alpine/git
#WORKDIR /app
#RUN git clone https://github.com//ams-project.git

#FROM maven:3.5-jdk-8-alpine
#WORKDIR /app
#COPY . . 
#RUN mvn install 

FROM tomcat:8.5-alpine 
MAINTAINER Payal Aggarwal
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
ADD target/demo.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
