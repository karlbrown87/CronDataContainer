FROM nginx:1.19.5
COPY panel.conf /etc/nginx/conf.d/
COPY prometheus.conf /etc/nginx/conf.d/
COPY grafana.conf /etc/nginx/conf.d/
COPY filebrowser.conf /etc/nginx/conf.d/
RUN rm /etc/nginx/conf.d/default.conf

#HEALTHCHECK --start-period=20s --interval=60s --timeout=10s \
#  CMD curl -f http://127.0.0.1:8080/health && curl --insecure -I -f http://127.0.0.1:8080/crondata/api/ping || exit 1
