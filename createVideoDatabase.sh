#!/bin/bash

sqlite="$1"

createTable=`cat ../DatabaseAdapterService/sql_statements/create/create-tables/create_table-youtube\ -\ sqlite.sql`
createTable2=`cat ../DatabaseAdapterService/sql_statements/create/create-tables/create_table-VideoLink\ -\ sqlite.sql`

echo "$createTable;" "$createTable2" | $sqlite videodatabase.db
