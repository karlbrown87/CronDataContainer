FROM nginx:1.19.5

COPY panel.conf /etc/nginx/conf.d/
COPY grafana.conf /etc/nginx/conf.d/
COPY filebrowser.conf /etc/nginx/conf.d/
COPY prometheus.conf /etc/nginx/conf.d/
COPY alertmanager.conf /etc/nginx/conf.d/
RUN mkdir /etc/nginx/cert/ -p
COPY crondata.crt /etc/nginx/cert/
COPY crondata.key /etc/nginx/cert/
COPY dhparam.pem /etc/nginx/cert/

RUN rm /etc/nginx/conf.d/default.conf

