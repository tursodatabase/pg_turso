postgres=# SELECT
        (SELECT 'CREATE TABLE IF NOT EXISTS ' || 'v' || ' (' || string_agg(attname, ', ')
            FROM pg_attribute
            WHERE attrelid = 'v'::REGCLASS AND attnum > 0)
    ||
    (SELECT ', PRIMARY KEY(' || string_agg(a.attname, ', ') || ') ON CONFLICT REPLACE);'
        FROM
            pg_constraint AS c
            CROSS JOIN LATERAL UNNEST(c.conkey) AS cols(colnum)
            INNER JOIN pg_attribute AS a ON a.attrelid = c.conrelid AND cols.colnum = a.attnum
        WHERE
            c.contype = 'p' 
            AND c.conrelid = 'v'::REGCLASS);
                                          ?column?                                           
---------------------------------------------------------------------------------------------
 CREATE TABLE IF NOT EXISTS v (id, v1, v2, v3, PRIMARY KEY(id, v1, v3) ON CONFLICT REPLACE);
(1 row)
