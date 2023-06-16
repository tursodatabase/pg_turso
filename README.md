# pgturso

Postgres [output plugin](https://www.postgresql.org/docs/current/logicaldecoding-output-plugin.html) for replicating data to Turso.

## Status

Super early development, with most of the stuff barely working.
* Only `INSERT` statements are generated at the moment. `DELETE`, `UPDATE`, and `TRUNCATE` should follow.
* Schema is not propagated anywhere - `CREATE TABLE` is not ever sent from the plugin, so we need some way to figure out schema changes.
* Batches. No point in sending cdc updates one at a time

## How to build

This guide assumes that you have a local installation of Postgres. Get one from https://www.postgresql.org/download/

1. Download zig 0.11 or higher: https://ziglang.org/download/
2. Initialize and build the Postgres submodule, once:
   ```sh
   git submodule update --init --recursive
   ( cd postgres && ./configure && make -j12 )
   ```
3. Format (optional)
   ```sh
   zig fmt src/*
   ```
4. Build
   ```sh
   zig build -freference-trace
   ```
5. Install in the Postgres extensions directory, e.g.
   ```
   cp zig-out/lib/libpgturso.so /usr/lib64/postgresql/pgturso.so
   ```
   I guess it's going to be dylib on Mac. Didn't check.

## How to use

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

Then, you can create a table and fill it with some data:
```sql
DROP TABLE IF EXISTS t;
CREATE TABLE t(id int primary key, v text, v1 text, v2 int);
INSERT INTO t VALUES (45, 'hey', 'turso', 14);
INSERT INTO t VALUES (46, 'hello', 'postgres', 15);
```

No replication happened yet. In Postgres, replication is triggered by calling a function. This function takes the replication slot name and optional parameters.
PgTurso requires two parameters - the `url` and the `token`, to be able to communicate with a Turso instance.
```sql
SELECT * FROM pg_logical_slot_get_changes('pgturso_slot', NULL, NULL, 'url', 'http://127.0.0.1:8080/', 'auth', 's3cr3t');
```
Note that this is a regular `SELECT` statement, so you're free to fetch the secret token value from another table, if it should remain secret.

The call triggers parsing WAL and processing all the logical changes. These changes are sent to Turso.
