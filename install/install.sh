#!/bin/bash
typeOs=`uname`
orgDir=`pwd`
cd "$(dirname "$0")"
cd ../

dir=`ls -d sqlite-src-*/ | sed -E 's/\/$//g'`

if [[ -d "$dir" ]]
then
	echo $dir exists
else
	./install/downloadLite.sh
fi

if [[ "$typeOs" == "Linux" ]]
then
	./buildLite.sh
	./createDatabases.sh
	echo "no linux ahk"
else
	./buildLite.cmd
	./createDatabases.sh
fi

cd $orgDir
