#!/bin/bash
sqlite="$1"

prefix="../DatabaseAdapterService/sql_statements/alter/alter-tables/*/"
createTables=(`ls $prefix`)

var=""
count=${#createTables[@]}
countInc=$(( $count / 2 ))

echo $count "${createTables[@]}"
count=0

for i in {0..$(( $countInc ))}
do
	dir=`echo ${createTables[$(($count))]} | sed 's/://g'`
	var=`cat "$dir${createTables[$(( $count + 1 ))]}"`
	echo "$var" | $sqlite videodatabase.db
	count=$(( $count + 2 ))
done
