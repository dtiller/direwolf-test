FILESIZE=10000000
for file in `ls *[0-9].bin`
do
	SIZE=`wc -c $file | sed -E "s/^ +//" | cut -d' ' -f1`
	if [ $SIZE -gt $FILESIZE ]
	then
		BASENAME=`basename $file .bin`
		if [ -f $BASENAME-a.bin ]
		then
			continue;
		fi

		echo Splitting $file $SIZE
		split -a 1 -b$FILESIZE $file ${BASENAME}-
		for s_file in `ls $BASENAME-[a-z]`
		do
			mv $s_file $s_file.bin
		done
		rm -i $file
	fi
done
