find . -name "*.bin" -exec sh -c 'sox -t s16 -c1 -r 24000 {} `basename {} .bin`.wav' \;
