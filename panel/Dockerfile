FROM ubuntu:20.04
RUN apt update
RUN apt install -y curl apt-transport-https lsb-release gnupg2 wget
RUN DEBIAN_FRONTEND=noninteractive apt install -y default-jdk zip unzip tar net-tools
RUN groupadd tomcat
RUN useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
COPY tomcat.tar.gz /opt/
COPY cron-data.zip /opt/
RUN tar -xvf /opt/tomcat.tar.gz && cp -R /tomcat /opt/tomcat
RUN unzip /opt/cron-data.zip && cp -R /cron-data/* /opt/tomcat/webapps
RUN rm -R /cron-data /tomcat
RUN rm /opt/tomcat.tar.gz /opt/cron-data.zip
COPY application-prod.yml /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
COPY server.xml /opt/tomcat/conf/server.xml
COPY web.xml /opt/tomcat/conf/web.xml
COPY tomcat-users.xml /opt/tomcat/conf/tomcat-users.xml
COPY context.xml /opt/tomcat/webapps/manager/META-INF/context.xml
RUN rm -Rf /opt/tomcat/webapps/docs /opt/tomcat/webapps/examples /opt/tomcat/webapps/host-manager /opt/tomcat/webapps/ROOT
RUN chgrp -R tomcat /opt/tomcat
USER root
COPY run.sh /
RUN chmod +x /run.sh

HEALTHCHECK --start-period=120s --interval=60s --timeout=10s \
  CMD curl -f http://localhost:8080/crondata/api/ping || curl -ku admin:${TOMCAT_ADMIN_PASSWORD} http://localhost:8080/manager/text/start?path=/crondata || exit 1

ENTRYPOINT . /run.sh
