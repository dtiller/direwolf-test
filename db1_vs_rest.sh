# echo dir,ts,chain,block,addr,devbat,msgid,brake,disc_bits,valve,confirm,db_1,motion,l_batt,light,hex

sqlite3 eotd.sql "select db_1,brake,valve,motion,devbat,l_batt,light,count(*) from eotd group by db_1,brake,valve,motion,devbat,l_batt,light;"
