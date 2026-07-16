#!/bin/bash
orgDir=`pwd`
cd "$(dirname "$0")"
replica=$1
if [[ "$typeOs" == "Linux" ]]
then
	sqlite-tools-*/sqlite3_rsync videodatabase.db $replica
else
	sqlite-tools-*/sqlite3_rsync.exe videodatabase.db $replica
fi
cd $orgDir