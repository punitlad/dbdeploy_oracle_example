#!/bin/bash

if [ "$#" -ne 4 ]
then
  echo "Usage: create_changelog_table.sh <username> <password> <host> <sid>"
else
  username=$1
  password=$2
  host=$3
  sid=$4

  sqlplus $username/$password@${sid}_${host} < createSchemaVersionTable.ora.sql
fi
