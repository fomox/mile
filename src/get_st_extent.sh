#!/bin/bash


if [ "$1" == "" ]; then
	echo "Must provide database as first argument,"
	echo ""
	exit 1 # missing args
fi

if [ "$2" == "" ]; then
	echo "Must provide table as second argument,"
	echo ""
	exit 1 # missing args
fi

# get config
source /systemapic/config/env.sh

# PGPASSWORD=docker psql -U docker -d $1 -h postgis -c "CREATE TABLE owner_info ( name text, uuid text, created_at integer);"
PGPASSWORD=$SYSTEMAPIC_PGSQL_PASSWORD psql -U $SYSTEMAPIC_PGSQL_USERNAME -d $1 -h postgis -c "SELECT ST_EXTENT(the_geom_3857) FROM $2;"