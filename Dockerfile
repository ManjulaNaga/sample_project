FROM tomcat
MAINTAINER manjula
RUN apt-get update && apt-get -y upgrade
WORKDIR /usr/local/tomcat
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY Context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

EXPOSE 8082
