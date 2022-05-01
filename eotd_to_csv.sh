# {DR:dir=r2f,ts=2022-04-10T10:08:39.886,chain=ONLY,block=BASIC,unit_addr=5048,devbat=OK,msgid=ONEWAY,brake_status=GO(60 psig),disc_bits=00,valve=OPERATIONAL,confirm=RESPONSE,disc_bit_1=1,motion=STOPPED/NOT_MONITORED,light_batt=OK/NOT_MONITORED,light=OFF/NOT_MONITORED,hex=bc 60 e3 80 3c 09 dc 0f
echo dir,ts,chain,block,addr,devbat,msgid,brake,disc_bits,valve,confirm,db_1,motion,l_batt,light,hex

grep "dir=r2f" | cut -d: -f2- | sed  "s/,[^=]*=/,/g" | sed "s/^[^=]*=//" | sed "s/([^)]*psig)//" | sed -E 's/,/","/g' | sed 's/^/"/' | sed 's/$/"/'
