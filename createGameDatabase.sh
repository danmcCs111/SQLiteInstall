#!/bin/bash

createTable=`cat ../DatabaseAdapterService/sql_statements/create/create-tables/create_table-game\ -\ sqlite.sql`
createTable2=`cat ../DatabaseAdapterService/sql_statements/create/create-tables/create_table-GameCost\ -\ sqlite.sql`
echo "$createTable;" "$createTable2" | sqlite-src-3510200/sqlite3.exe gamedatabase.db
