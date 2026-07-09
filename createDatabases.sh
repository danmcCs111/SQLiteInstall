#!/bin/bash
typeOs=`uname`
if [[ "$typeOs" == "Linux" ]]
then
	sqlite="./sqlite-src-3510200/sqlite3"
else
	sqlite="./sqlite-src-3510200/sqlite3.exe" 
fi

prefix="../DatabaseAdapterService/sql_statements/create/create-tables/*-sqlite/"

./database-manage.sh $sqlite "$prefix"

./alterDatabases.sh $sqlite
