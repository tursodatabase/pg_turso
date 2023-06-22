# pgturso

Postgres [output plugin](https://www.postgresql.org/docs/current/logicaldecoding-output-plugin.html) for replicating data to Turso.

## Status

Replicating tables and views is more or less supported, but:
1. Only basic types - integers and text - were tested. Postgres has way more types, and they may prove problematic to replicate. We can probably just cast them to generic binary blobs and replicate them in that form.
2. Schema migration is still manual - the table needs to be created in Turso. That should be automated.

## Installation

This guide assumes that you have a local installation of Postgres. Get one from https://www.postgresql.org/download/

Please note that you need to download zig development version 2023-06-20 or higher: https://ziglang.org/download/

```sh
cd /tmp
git clone https://github.com/chiselstrike/pgturso.git
cd pgturso
export ZIG=<path where zig executable is>
make
make install # may need sudo
```

## Getting Started 
Let's assume that you have the following table and materialized view that you wish to replicate to the edge with Turso:
```sql
CREATE TABLE IF NOT EXISTS menu(
   dish_id int PRIMARY KEY,
   name text,
   price float
);
CREATE MATERIALIZED VIEW assorted_collection_of_dirt_cheap_dishes
  AS SELECT dish_id, name FROM menu WHERE price <= 2.99;
```

The Turso table corresponding to our materialized view can be created with the help of `turso db shell` as follows:
```sql
CREATE TABLE assorted_collection_of_dirt_cheap_dishes(
   dish_id int PRIMARY KEY ON CONFLICT REPLACE,
   name
);
```
The process of creating the corresponding replication table in Turso will be automated in the future, but for now the table needs to be created manually.

The way replication plugins work is as follows.

First, you need to change your "wal level" to `logical`. Logical WAL means that WAL entries can be parsed
and structured logically as row changes. In order to switch to `logical` WAL level, do the following, once:
```sql
ALTER SYSTEM SET wal_level = logical;
```
Then you need to restart the Postgres server, otherwise the change wouldn't take effect. After a restart, verify with:
```sql
SHOW wal_level;
 wal_level 
-----------
 logical
(1 row)
```

Then, you need to create a "logical replication slot".
You can do that by calling a builtin function and passing two parameters to it - the first is the name of your slot,
and you can pick whatever name you like. The second is the plugin used, and it needs to match the shared library name
you compiled above, so `pgturso`.
```sql
SELECT pg_create_logical_replication_slot('pgturso_slot', 'pgturso');
```

Then, you can fill the table with some data:
```sql
INSERT INTO menu VALUES (1, 'salami', 2.49);
INSERT INTO menu VALUES (2, 'pastrami', 4.99);
INSERT INTO menu VALUES (3, 'wasabi', 1.99);
```

No replication has happened yet. In Postgres, replication is triggered by calling a function. This function takes the replication slot name and optional parameters.
PgTurso requires two parameters - the `url` and the `token`, to be able to communicate with a Turso instance, e.g.
```sql
SELECT * FROM pg_logical_slot_get_changes('pgturso_slot', NULL, NULL, 'url', 'https://your-unique-link.turso.io/', 'auth', 's3cr3t-p4s5');
```
Note that this is a regular `SELECT` statement, so you're free to fetch the secret token value from another table, if it should remain secret.

The call triggers parsing WAL and processing all the logical changes. These changes are sent to Turso.

## How to use the pgturso extension with helper functions

Instead of replicating manually, you can use our `pgturso` extension. It's based on [pg_cron](https://github.com/citusdata/pg_cron) and allows the replication to be automated.

1. Set up Turso authentication - helper functions that return the database URL and token
```sql
-- token
CREATE OR REPLACE FUNCTION turso_token() RETURNS text LANGUAGE SQL AS $$ SELECT <your-token-generated-with-turso-db-tokens-create>; $$;

-- url
CREATE OR REPLACE FUNCTION turso_url() RETURNS text LANGUAGE SQL AS $$ SELECT 'https://workerscounter-psarna.turso.io/'; $$;
```

2. Load the extension and schedule replication. The interval accepts `pg_cron` syntax.

```sql
CREATE EXTENSION pgturso;
SELECT turso_schedule_mv_replication('assorted_collection_of_dirt_cheap_dishes', '5 seconds');
```

Voilà! Your data is now replicated to Turso.
