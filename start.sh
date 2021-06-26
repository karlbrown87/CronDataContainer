#!/bin/bash

source .env
export HOSTNAME DOMAIN BD_PASS
docker stack deploy --compose-file docker-crondata-stack.yml crondata
