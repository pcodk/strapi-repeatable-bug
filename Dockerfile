FROM postgres

# Seed the database with the initial data
COPY ./db_dump/component_delete_error.sql /docker-entrypoint-initdb.d/