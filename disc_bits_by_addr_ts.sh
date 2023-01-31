sqlite3 --column eotd.sql "select ts,addr,brake,valve,motion,db_1,disc_bits from eotd order by cast(addr as int),ts;"
