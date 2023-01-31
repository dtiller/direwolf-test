sqlite3 --column eotd.sql "select ts,addr,db_1,motion,disc_bits from eotd order by cast(addr as int),ts;"
