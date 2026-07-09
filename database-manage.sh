#!/bin/bash

sqlite="$1"
prefix="$2"

echo $prefix
createTables=(`ls -l $prefix | grep :$`)

var=""
count=${#createTables[@]}

echo ${createTables[@]}

for i in $(seq 0 $(( $count-1 )) )
do
	dir=`echo ${createTables[$(($i))]} | sed 's/://g'`
	database=`echo $dir | egrep -o "[a-zA-Z\-]*/$" | sed 's/table-//g' | sed 's/sqlite//g' | egrep -o "[a-zA-Z]*"`
	database=${database,,}.db
	
	echo $dir
	fs=(`ls $dir`)
	echo ${fs[@]}

	echo dir: "$dir" 
	echo database: "$database" 

	for f in ${fs[@]}
	do
		fName=$dir$f
		sql=`cat $fName`

		echo sqlFileName $fName
		echo sqlfileContents $sql
		
		echo "$sql" | $sqlite $database
	done
done

