#! /bin/bash
#
# Setup mssql in the container.
# we need to: 
#  configure a default SA password
#  ACCEPT the EULA
#  install the packages
#  add a sample database, schema and data

export SA_PASSWORD=RedHat2017
export ACCEPT_EULA=Y
yum -y install mssql-server 
yum -y install mssql-tools 
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile 
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc

# start the sqlservr engine manually and spin it off.
/opt/mssql/bin/sqlservr &
# now we can connect and set up some junk data.
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -i /tmp/mssql-testdb.sql
