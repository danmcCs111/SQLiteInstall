#!/bin/bash
orgDir=`pwd`
cd "$(dirname "$0")"
cd ..
curl https://sqlite.org/2026/sqlite-src-3510200.zip --output sqlite-src-3510200.zip 
unzip sqlite-src-3510200.zip

if [[ "$typeOs" == "Linux" ]]
then
	curl https://sqlite.org/2026/sqlite-tools-linux-x64-3530300.zip --output sqlite-tools-linux-x64-3510200.zip
	unzip sqlite-tools-linux-x64-3510200.zip -d sqlite-tools-linux-x64-3510200
else
	curl https://sqlite.org/2026/sqlite-tools-win-x64-3530300.zip --output sqlite-tools-win-x64-3510200.zip
	unzip sqlite-tools-win-x64-3510200.zip -d sqlite-tools-win-x64-3510200
fi
cd $orgDir