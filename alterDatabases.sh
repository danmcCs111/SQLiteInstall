#!/bin/bash
sqlite="$1"

prefix="../DatabaseAdapterService/sql_statements/alter/alter-tables/*-sqlite/"

./database-manage.sh $sqlite "$prefix"
