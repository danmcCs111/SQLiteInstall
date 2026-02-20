#!/bin/bash
dbs=`ls create*Database.sh`
for d in ${dbs[@]}
do
	echo $d
	./$d
done
