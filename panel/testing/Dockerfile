FROM utmstack.azurecr.io/cron-panel:testing

COPY run.sh /
RUN chmod +x /run.sh

HEALTHCHECK --start-period=120s --interval=60s --timeout=10s \
  CMD curl -f http://localhost:8080/crondata/api/ping || curl -ku admin:${TOMCAT_ADMIN_PASSWORD} http://localhost:8080/manager/text/start?path=/crondata || exit 1
