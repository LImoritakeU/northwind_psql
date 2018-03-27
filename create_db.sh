#!/bin/bash

# setup Postgres Environment Variables
export PGHOST="127.0.0.1"
export PGPORT=5432
export PGUSER=postgres
export PGPASSWORD=password


# start import
dropdb northwind
dropuser northwind_user

createdb northwind
psql northwind < northwind.sql

psql template1 -c "create user northwind_user;"
psql template1 -c "alter user northwind_user password 'thenorthiscoming';"
psql template1 -c "grant all on DATABASE northwind to northwind_user;"
psql northwind -c "GRANT ALL on ALL tables IN SCHEMA public to northwind_user"


# (optional)
export PGDATABASE=northwind
export PGUSER=northwind_user
export PGPASSWORD=thenorthiscoming
