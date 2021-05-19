#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER crondata;
    CREATE DATABASE cron_data;
    GRANT ALL PRIVILEGES ON DATABASE cron_data TO docker;
EOSQL