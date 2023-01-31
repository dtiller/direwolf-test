sqlite3 eotd.sql "select db_1,brake,valve,motion,count(*) from eotd group by db_1,brake,valve,motion;"
