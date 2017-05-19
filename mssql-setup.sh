#! /bin/bash
#
# Setup mssql in the container.
# we need to: 
#  install the package
#  run the setup program
#  configure a default SA password
#  allow the SA password to be changed when the container is run
#  add a sample database, schema and data
#  configure access to the sample database

export SA_PASSWORD=RedHat2017
export ACCEPT_EULA=Y
yum -y install mssql-server 
yum -y install mssql-tools 
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile 
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc 
/opt/mssql/bin/sqlservr &
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -i /tmp/mssql-testdb.sql
