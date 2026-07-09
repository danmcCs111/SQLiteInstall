#!/bin/bash
sqlite="$1"

prefix="../DatabaseAdapterService/sql_statements/create/create-tables/*-sqlite/"

./database-manage.sh $sqlite "$prefix"

./alterDatabases.sh $sqlite
