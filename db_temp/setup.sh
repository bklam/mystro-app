#this script should be run to setup the database or reset it

#if you're refreshing your database and trying to reimport, drop the old one
psql postgres -c "drop database mystro"
psql postgres -c "drop role mystro_admin"

#then try to create a postgres database with user pats
psql postgres -c "create role mystro_admin login"
psql postgres -c "alter role mystro_admin with superuser"
psql postgres -c "create database mystro owner mystro_admin"

# add commands as more files are created
psql -U mystro_admin -d mystro -f mystro_structure.sql
psql -U mystro_admin -d mystro -f mystro_privileges.sql
psql -U mystro_admin -d mystro -f mystro_functions.sql
psql -U mystro_admin -d mystro -f mystro_constraints.sql
psql -U mystro_admin -d mystro -f mystro_transaction.sql
