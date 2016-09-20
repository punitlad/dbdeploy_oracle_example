#!/bin/bash

# This is an example of invoking the command line interface of dbdeploy
# Typically, this is used on production deployments where there is a
# desire not to have an ant installation on the target machine.

# To try this script, you need to run "ant clean" first to create an
# empty database with a blank dbdeploy changelog table.

set dependencies/dbdeploy-cli-*.jar dependencies/ojdbc*.jar
CP=$(IFS=:; echo "$*")
echo "Classpath is $CP"

java -cp $CP com.dbdeploy.CommandLineTarget \
--driver "oracle.jdbc.OracleDriver" \
--url "jdbc:oracle:thin:@localhost:1521:xe" \
--userid "override_me" \
--password "override_me" \
--scriptdirectory "example_sql_scripts"

# NB: if you don't want to include the database password on the
# command line (as you probably don't), miss out the parameter to
# --password and dbdeploy will then read from stdin. You can then
# do "echo password | java -cp $CP com.dbdeploy...."
