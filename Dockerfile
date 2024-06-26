FROM ubuntu:16.04 
MAINTAINER "info@gamutgurus.com"
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr
ADD apache-tomcat-8.5.100.tar.gz /root
COPY target/gamutkart.war /root/apache-tomcat-8.5.100/webapps
ENTRYPOINT /root/apache-tomcat-8.5.100/bin/startup.sh && bash

