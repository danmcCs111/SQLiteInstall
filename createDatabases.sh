#!/bin/bash

typeOs=`uname`
dbs=`ls create*Database.sh`
if [[ "$typeOs" == "Linux" ]]
then
	sqlite="./sqlite-src-3510200/sqlite3"
else
	sqlite="./sqlite-src-3510200/sqlite3.exe" 
fi

for d in ${dbs[@]}
do
	echo $d
	./$d $sqlite
done
