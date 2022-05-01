RATE=24000
BASE=`date "+%Y-%m-%d-%H-%M-%S"`_$1_$RATE
MODEM="-B EOTD"
DEV=`rtl_sdr -d 9999 2>&1 | grep "SN: 00000001" | cut -d: -f1`

echo Recording $BASE at $RATE S/s from device $DEV
rtl_fm -f $1 -s $RATE -d $DEV | tee $BASE.bin | ./src/direwolf -r $RATE $MODEM - | tee $BASE.txt
