#!/bin/bash
sqlite="$1"

prefix="../DatabaseAdapterService/sql_statements/create/create-tables/create_table-VideoDatabase-sqlite/"
createTables=(`ls $prefix`)

echo ${createTables[@]}
var=""
for ct in ${createTables[@]}
do
	var=`cat "$prefix$ct"`
	echo "$var" | $sqlite videodatabase.db
done
