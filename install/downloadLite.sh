#!/bin/bash
orgDir=`pwd`
cd "$(dirname "$0")"
cd ..
curl https://sqlite.org/2026/sqlite-src-3510200.zip --output sqlite-src-3510200.zip 
unzip sqlite-src-3510200.zip
cd $orgDir
