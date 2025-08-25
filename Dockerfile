FROM postgres:17.5

ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin
ENV POSTGRES_DB=trmdb

RUN mkdir -p /docker-entrypoint-init.d

COPY trm.csv /docker-entrypoint-initdb.d/trm.csv

COPY init.sql /docker-entrypoint-initdb.d/init.sql
