#!/bin/bash
typeOs=`uname`
orgDir=`pwd`
cd "$(dirname "$0")"

./downloadLite.sh
if [[ "$typeOs" == "Linux" ]]
then
	#no op
	echo "no linux ahk"
else
	./buildLite.cmd
fi

cd $orgDir
