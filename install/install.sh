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
	if [[ "$typeOs" == "Linux" ]]
	then
		#no op
		echo "no linux ahk"
	else
		./buildLite.cmd
	fi
fi

cd $orgDir
