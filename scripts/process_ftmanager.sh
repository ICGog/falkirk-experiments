#!/bin/bash
# $1 ftmanager.log

grep 'START$' $1 | head -n -1 > tmp_start
grep 'COMPLETE$' $1 | tail -n +2 > tmp_complete
paste -d' ' tmp_start tmp_complete > ftstartcomplete.log
rm tmp_start
rm tmp_complete
sed -e s/://g -i ftstartcomplete.log
cut -d' ' -f1,3 ftstartcomplete.log | awk '{ print $2 - $1 }' | sort -n
