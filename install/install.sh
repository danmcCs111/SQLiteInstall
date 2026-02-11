#!/bin/bash
typeOs=`uname`
orgDir=`pwd`
cd "$(dirname "$0")"
cd ../

./install/downloadLite.sh
if [[ "$typeOs" == "Linux" ]]
then
	#no op
	echo "no linux ahk"
else
	./install/buildLite.cmd
fi

cd $orgDir
