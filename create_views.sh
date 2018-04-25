#!/usr/bin/env bash

for filename in $PWD/scripts/*.sql; do
    psql -a -f $filename
done
