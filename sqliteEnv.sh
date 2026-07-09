#!/bin/bash
typeOs=`uname`
if [[ "$typeOs" == "Linux" ]]
then
	sqlite="./sqlite-src-3510200/sqlite3"
else
	sqlite="./sqlite-src-3510200/sqlite3.exe" 
fi
