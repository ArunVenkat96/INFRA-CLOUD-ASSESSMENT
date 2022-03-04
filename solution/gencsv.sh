#!/bin/bash
rows=$1
RANDOM=`date +%s`
if [ -f inputFile ]
then
	rm -f inputFile
fi
((rows-=1))
for i in $(seq 0 1 $rows)
do
	echo $i, $RANDOM >>inputFile
done
