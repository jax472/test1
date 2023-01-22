# WIP - Gitpod Environment for COMP520

Installs the following:
- postgres 15.1
- pgadmin4
- mysql 8.0.32
- phpmyadmin

# Connect to Postgres w/ pgAdmin4
pgAdmin4 is exposed on port 5050.
- Open web preview for port 5050
- Use the following credentials to sign in to pgadmin:
    - email: admin@comp520.com
    - password: password
    - To change these, view the docker-compose.yml.
- Register the postgres server
    - Once signed in to pgadmin, click server->register->server
    - On the general tab:
        - name: local_psql
    - On the connection tab: 
        - host name/address: postgres_db
        - username: postgres
        - password: password
        - to change these, view the docker-compose.yml
- Copy the sample databases to the default pgadmin4 storage location in the container
    - The default location is - /var/lib/pgadmin/storage/<username>
    - docker exec -i postgres_db
    - cp -r databases/ /var/lib/pgadmin/storage/admin_comp520.com

# Connect to MySQL w/ PhpAdmin
phpAdmin is exposed on port 8081
- Sign in to the mysql server with following:
    - server: mysql_db
    - username: root
    - password:  password
    - to change these, view the docker-compose.yml