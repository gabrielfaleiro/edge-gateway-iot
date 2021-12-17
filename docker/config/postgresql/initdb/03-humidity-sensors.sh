#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "home" <<-EOSQL

CREATE TABLE public.humidity_sensors
(
    "time" timestamp without time zone,
    value integer,
    source text,
    sensor_type text,
    units text,
    scale real
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.humidity_sensors
    OWNER to home;

EOSQL

