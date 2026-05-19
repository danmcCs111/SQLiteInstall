#!/bin/bash
sqlite="$1"

dirs=`ls -l ../DatabaseAdapterService/sql_statements/alter/alter-tables/*/ | egrep "^\.\." | sed 's/://g'`

echo ${dirs[@]}
echo 

for d in ${dirs[@]}
do
	echo $d
	files=`ls $d`
	for f in ${files[@]}
	do
		echo $f
		var=`cat $d$f`
		echo $var

		echo "$var" | $sqlite videodatabase.db
	done
done
