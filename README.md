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

```sql
psql -U postgres
\x auto

CREATE TABLE auth_user (
  id serial PRIMARY KEY NOT NULL,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
  phone VARCHAR (50),
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

select * from pg_stat_user_tables;

\dt

INSERT INTO auth_user (username, password, phone) VALUES ('pulkit', 'empty', '82325435234');
SELECT * from auth_user;
```
