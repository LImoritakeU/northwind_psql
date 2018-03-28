#!/bin/bash

export PGHOST="127.0.0.1"
export PGPORT=5432
export PGUSER=postgres
export PGPASSWORD=password

dropdb northwind
dropuser northwind_user

createdb northwind
psql northwind < northwind.sql

psql $PGDATABASE -c "create user northwind_user;"
psql $PGDATABASE -c "alter user northwind_user password 'winteriscoming';"
psql $PGDATABASE -c "grant all on DATABASE northwind to northwind_user;"
psql northwind -c "GRANT ALL on ALL tables IN SCHEMA public to northwind_user"
