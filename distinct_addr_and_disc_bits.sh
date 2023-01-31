sqlite3 eotd.sql "select distinct addr,disc_bits from eotd order by cast(addr as int),disc_bits;"
