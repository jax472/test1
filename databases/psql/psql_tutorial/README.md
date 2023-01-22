https://www.postgresqltutorial.com/postgresql-getting-started/install-postgresql-linux/  

```
# download the zip
curl -kO https://postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip
# unzip the zip
unzip unzip dvdrental.zip

# copy the tar to the docker container
PSQL_CONTAINER=postgres_db
docker cp dvdrental.tar $PSQL_CONTAINER:/

# bash into the container
docker exec -it -u postgres $PSQL_CONTAINER bash

# access psql, create the database, exit psql
psql
create database dvdrental;
\q

# use pg_restore to load the dvdrental database
pg_restore --dbname=dvdrental --verbose /dvdrental.tar
```