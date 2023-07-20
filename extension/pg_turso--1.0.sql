-- PgTurso extension: replication to Turso database.
-- PgTurso can be used to replicate a table or materialized view,
-- based on the Postgres native logical replication mechanism.
-- Requires `wal_level = logical`. If not set up, please call
-- `ALTER SYSTEM SET wal_level = logical;` and restart Postgres
-- prior to using this extension.

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pg_turso" to load this file. \quit

-- Procedure that replicates a table.
-- Calls turso_url() and turso_token() functions to obtain the URL and token.
-- Please create these functions prior to replication.
CREATE OR REPLACE PROCEDURE turso_replicate_table(table_name text)
LANGUAGE SQL
AS $$
        SELECT * FROM pg_logical_slot_get_changes(
            'pg_turso_slot_' || table_name, NULL, NULL,
            'url', (SELECT turso_url()),
            'auth', (SELECT turso_token()),
            'table_name', table_name
        );
$$;

-- Procedure that replicates a materialized view
-- Calls turso_url() and turso_token() functions to obtain the URL and token.
-- Please create these functions prior to replication.
CREATE OR REPLACE PROCEDURE turso_replicate_mv(mv_name text)
LANGUAGE PLpgSQL
AS $$
BEGIN
  EXECUTE 'REFRESH MATERIALIZED VIEW ' || mv_name || ';'; -- TODO: in certain cases we can also refresh CONCURRENTLY
  EXECUTE 'CALL turso_replicate_table(' || quote_literal(mv_name) || ');';
END;
$$;

-- Function that schedules logical replication to Turso based on pg_cron,
-- and optionally also a materialized view refresh, at an interval.
-- Unschedule with cron.unschedule(returned-job-number)
CREATE OR REPLACE FUNCTION turso_schedule_table_replication(table_name text, refresh_interval text) RETURNS integer
LANGUAGE SQL
AS $$
    CREATE EXTENSION IF NOT EXISTS pg_cron;
    SELECT turso_migrate_table_schema(table_name);
    SELECT pg_create_logical_replication_slot('pg_turso_slot_' || table_name, 'pg_turso');
    SELECT cron.schedule(
        'turso-refresh-' || table_name,
        refresh_interval,
        $cron$CALL turso_replicate_table('$cron$ || table_name || $cron$')$cron$
    );
$$;

-- Function that schedules logical replication to Turso based on pg_cron,
-- and optionally also a materialized view refresh, at an interval.
-- Unschedule with cron.unschedule(returned-job-number)
CREATE OR REPLACE FUNCTION turso_schedule_mv_replication(view_name text, refresh_interval text) RETURNS integer
LANGUAGE SQL
AS $$
    CREATE EXTENSION IF NOT EXISTS pg_cron;
    SELECT turso_migrate_mv_schema(view_name);
    SELECT pg_create_logical_replication_slot('pg_turso_slot_' || view_name, 'pg_turso');
    SELECT cron.schedule(
        'turso-refresh-' || view_name,
        refresh_interval,
        $cron$CALL turso_replicate_mv('$cron$ || view_name || $cron$')$cron$
    );
$$;

-- Function for sending queries to Turso
CREATE FUNCTION turso_send(url text, token text, data text) RETURNS text
    AS '$libdir/pg_turso' LANGUAGE C STRICT;

-- Function that returns a CREATE TABLE statement understandable by Turso,
-- based on a Postgres table.
CREATE OR REPLACE FUNCTION turso_generate_create_table_for_table(table_name text) RETURNS text
LANGUAGE SQL
AS $$
    SELECT 'CREATE TABLE IF NOT EXISTS ' || table_name || ' (' || string_agg(attname, ', ') || ')'
    FROM pg_attribute
        WHERE attrelid = table_name::REGCLASS AND attnum > 0;
$$;

-- Function that returns a CREATE TABLE statement understandable by Turso,
-- based on a Postgres materialized view.
CREATE OR REPLACE FUNCTION turso_generate_create_table_for_mv(mv_name text) RETURNS text
LANGUAGE SQL
AS $$
    SELECT 'CREATE TABLE IF NOT EXISTS ' || mv_name || ' (' || string_agg(attname, ', ') || ')'
    FROM pg_attribute
        WHERE attrelid = mv_name::REGCLASS AND attnum > 0;
$$;

-- Function that creates the corresponding table in Turso for replication purposes.
CREATE OR REPLACE FUNCTION turso_migrate_table_schema(table_name text) RETURNS text
LANGUAGE SQL
AS $$
    SELECT turso_send(
        turso_url(),
        'Bearer ' || turso_token(),
        turso_generate_create_table_for_table(table_name)
    );
$$;

-- Function that creates the corresponding table in Turso for replication purposes.
CREATE OR REPLACE FUNCTION turso_migrate_mv_schema(mv_name text) RETURNS text
LANGUAGE SQL
AS $$
    SELECT turso_send(
        turso_url(),
        'Bearer ' || turso_token(),
        turso_generate_create_table_for_mv(mv_name)
    );
$$;
