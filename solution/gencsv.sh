#!/bin/bash
rows=$1
RANDOM=`date +%s`
if [ -f inputFile ]
then
	rm -f inputFile
fi

for i in $(seq 0 1 $rows)
do
	echo $i, $RANDOM >>inputFile
done
