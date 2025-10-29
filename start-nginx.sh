#!/bin/bash
source .env
export HOSTNAME DOMAIN BD_PASS

docker pull utmstack.azurecr.io/crondata-nginx:latest
docker pull utmstack.azurecr.io/crondata-panel:latest
docker pull utmstack.azurecr.io/crondata-prometheus:latest
docker pull utmstack.azurecr.io/crondata-grafana:latest
docker pull utmstack.azurecr.io/crondata-alertmanager:latest
docker pull utmstack.azurecr.io/crondata-node-exporter:latest
docker pull utmstack.azurecr.io/crondata-postgres:latest
docker pull utmstack.azurecr.io/crondata-traefik:latest
docker pull utmstack.azurecr.io/crondata-google-cadvisor:latest
docker pull utmstack.azurecr.io/crondata-filebrowser:latest

docker stack deploy --compose-file docker-crondata-nginx.yml crondata
