# A very rudimentary mssql-server service
#
# This is intended to have the client run remotely. # 
#
# docker build -t="mssql-server-14" .
#
# Launch the server
#
# docker run -d mssql-server-14
#
# Find the IP of the server
#
# MYSQL_IP=`docker inspect CONTAINER_ID | python -c 'import json,sys;obj=json.load(sys.stdin);print obj[0]["NetworkSettings"]["IPAddress"]'`
#
# docker run -i -t mssql-server-14 mysql -u admin -p -h $MYSQL_IP

FROM registry.access.redhat.com/rhel7:latest

MAINTAINER Paul Armstrong version: 0.1

ADD ./mssql-setup.sh /tmp/mssql-setup.sh
ADD ./mssql-testdb.sql /tmp/mssql-testdb.sql
RUN yum repolist --disablerepo=* && \
    yum-config-manager --disable \* > /dev/null && \
    yum-config-manager --enable rhel-7-server-rpms > /dev/null && \
    curl https://packages.microsoft.com/config/rhel/7/mssql-server.repo > /etc/yum.repos.d/mssql-server.repo && \
    curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/msprod.repo && \
    yum -y install sudo
RUN /bin/bash /tmp/mssql-setup.sh

# Adding this will expose mssql on a random host port. It's recommended to avoid this. Other containers on the same 
# host can use the service without it.
EXPOSE 1433
ENTRYPOINT ["/opt/mssql/bin/sqlservr"]

