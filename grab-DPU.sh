RATE=12500
BASE=`date "+%Y-%m-%d-%H-%M-%S"`_$1_$RATE
MODEM="-B DPU"
echo Recording $BASE at $RATE S/s
rtl_fm -p 88 -f $1 -s $RATE | tee $BASE.bin | ./src/direwolf -r $RATE $MODEM - | tee $BASE.txt
