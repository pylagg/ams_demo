
#FROM alpine/git
#WORKDIR /app
#RUN git clone https://github.com//ams-project.git

FROM maven:3.5-jdk-8-alpine
#WORKDIR /app
COPY . . 
RUN mvn install 

FROM tomcat:8.5-alpine
COPY --from=0 /target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
