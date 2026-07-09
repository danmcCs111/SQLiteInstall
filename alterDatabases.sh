#!/bin/bash
source ./sqliteEnv.sh

prefix="../DatabaseAdapterService/sql_statements/alter/alter-tables/*-sqlite/"

./database-manage.sh "$prefix"
