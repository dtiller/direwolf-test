RATE=24000
BASE=`date "+%Y-%m-%d-%H-%M-%S"`_$1_$RATE
MODEM="-B EOTD"
echo Recording $BASE at $RATE S/s
rtl_fm -f $1 -s $RATE | tee $BASE.bin | ./src/direwolf -r $RATE $MODEM - | tee $BASE.txt
