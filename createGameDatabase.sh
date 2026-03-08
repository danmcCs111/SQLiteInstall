#!/bin/bash

sqlite="$1"

prefix="../DatabaseAdapterService/sql_statements/create/create-tables/create_table-GameDatabase-sqlite/"
createTables=(`ls $prefix`)

echo ${createTables[@]}
var=""
for ct in ${createTables[@]}
do
	var=`cat "$prefix$ct"`
	echo "$var" | $sqlite gamedatabase.db
done
