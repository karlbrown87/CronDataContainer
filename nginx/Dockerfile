FROM nginx:1.19.5


HEALTHCHECK --start-period=120s --interval=60s --timeout=60s \
  CMD curl -f http://localhost:8080/crondata/api/targets || exit 1

RUN rm -rf /etc/nginx/conf.d/*
COPY ./virtual_host/ /etc/nginx/conf.d/
CMD ["/bin/sh",  "-c", "exec nginx -g 'daemon off;'"]