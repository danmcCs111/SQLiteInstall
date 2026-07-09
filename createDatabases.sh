#!/bin/bash
sqlite="$1"

prefix="../DatabaseAdapterService/sql_statements/create/create-tables/*-sqlite/"
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
	database=`echo $dir | egrep -o "[a-zA-Z\-]*/$" | sed 's/table//g' | sed 's/sqlite//g' | egrep -o "[a-zA-Z]+"`
	database=`echo ${database,,}`.db

	echo dir: "$dir" 
	echo database: "$database" 
	echo table: "$var" 

	echo "$var" | $sqlite $database
	count=$(( $count + 2 ))
done

