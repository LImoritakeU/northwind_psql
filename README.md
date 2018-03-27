#Northwind database for Postgres
A simple sql script that will populate a database with the famous northwind example, adapted for postgres.


1. Make sure all Postgres Environment Variables are correct.
2. launch `create_db.sh`
3. Login Postgres server as northwind_user: `$ psql -U northwind_user`
4. (option)
    ```
    $ export PGDATABASE=northwind
    $ export PGUSER=northwind_user
    $ export PGPASSWORD=thenorthiscoming
    ```
5. Use northwind database as "northwind_user" with password "thenorthiscoming"

