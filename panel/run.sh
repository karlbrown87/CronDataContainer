#!/bin/sh

echo "Configuring application-prod.yml"
sed -i "s/POSTGRESQL_USER/${POSTGRESQL_USER}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/POSTGRESQL_PASSWORD/${POSTGRESQL_PASSWORD}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/POSTGRESQL_HOST/${POSTGRESQL_HOST}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/POSTGRESQL_PORT/${POSTGRESQL_PORT}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/POSTGRESQL_DATABASE/${POSTGRESQL_DATABASE}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml

sed -i "s/ELASTICSEARCH_HOST/${ELASTICSEARCH_HOST}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/ELASTICSEARCH_PORT/${ELASTICSEARCH_PORT}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/ELASTICSEARCH_SECRET/${ELASTICSEARCH_SECRET}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml

sed -i "s/OPENVAS_HOST/${OPENVAS_HOST}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/OPENVAS_PORT/${OPENVAS_PORT}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/OPENVAS_USER/${OPENVAS_USER}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/OPENVAS_PASSWORD/${OPENVAS_PASSWORD}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/OPENVAS_PG_PORT/${OPENVAS_PG_PORT}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/OPENVAS_PG_DATABASE/${OPENVAS_PG_DATABASE}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/OPENVAS_PG_USER/${OPENVAS_PG_USER}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml
sed -i "s/OPENVAS_PG_PASSWORD/${OPENVAS_PG_PASSWORD}/g" /opt/tomcat/webapps/crondata/WEB-INF/classes/config/application-prod.yml

echo "Configuring tomcat-users.xml"
sed -i "s/TOMCAT_ADMIN_USER/${TOMCAT_ADMIN_USER}/g" /opt/tomcat/conf/tomcat-users.xml
sed -i "s/TOMCAT_ADMIN_PASSWORD/${TOMCAT_ADMIN_PASSWORD}/g" /opt/tomcat/conf/tomcat-users.xml

/opt/tomcat/bin/catalina.sh run
