# Vinyasa
Development environment configurator

**Yet to be started**

## Meanwhile Shorthands

## Postgres
* [ ] `username`=`postgres`
* [ ] `db`=`postgres`
* [ ] `password`=`admin`
* [ ] `port`=`5432`

```sh
docker run -d -v /Users/pulkitsingh/dev/auth-dummy:/bitnami/postgresql -e POSTGRESQL_PASSWORD=admin -p 5432:5432 bitnami/postgresql:latest
```

```sh
psql -U postgres
\x auto
select * from pg_stat_user_tables;
```
