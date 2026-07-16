#!/bin/bash
orgDir=`pwd`
cd "$(dirname "$0")"

origin=$1
replica=$2

if [[ "$typeOs" == "Linux" ]]
then
	sqlite-tools-*/sqlite3_rsync $origin $replica
else
	sqlite-tools-*/sqlite3_rsync.exe $origin $replica
fi
cd $orgDir