#!/bin/bash
source ./sqliteEnv.sh
prefix="../DatabaseAdapterService/sql_statements/create/create-tables/*-sqlite/"

./database-manage.sh "$prefix"

./alterDatabases.sh 
