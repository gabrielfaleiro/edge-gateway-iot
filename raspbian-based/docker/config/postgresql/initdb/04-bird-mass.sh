#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "home" <<-EOSQL

CREATE TABLE public.bird_mass
(
    "time" timestamp without time zone,
    mass integer,
    name text
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.bird_mass
    OWNER to home;

EOSQL

