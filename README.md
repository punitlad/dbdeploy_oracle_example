# dbdeploy_oracle_example

Can be run in multiple ways:

##Using Ant
`ant -Ddb.userid="{db.userid}" -Ddb.password="{db.password}" -Ddb.url="{db.url}" -Ddb.sql.directory="{db.sql.directory}" [clean|update-database]`

##Using Bash
`. create_changelog_table.sql`

`. update_database.sh`

