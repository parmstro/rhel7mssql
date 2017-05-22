# A very rudimentary mssql-server service
#
# This is intended to have the client run remotely. 
# docker build -t="mssql-server-14" .
#
# Launch the server
# docker run -d mssql-server-14
#
# Find the IP of the server
# MYSQL_IP=`docker inspect CONTAINER_ID | python -c 'import json,sys;obj=json.load(sys.stdin);print obj[0]["NetworkSettings"]["IPAddress"]'`
#
# Run the container image
# docker run -i -t mssql-server-14 mysql -u admin -p -h $MYSQL_IP

FROM registry.access.redhat.com/rhel7:latest

LABEL maintainedby="Paul Armstrong" \
      version="0.4" \
      release-date="2017-05-22"

COPY ./mssql-setup.sh /tmp/mssql-setup.sh
COPY ./*.sql /tmp/
# COPY ./generateOrder.sproc.sql /tmp/generateOrder.sproc.sql
# COPY ./getOrderAndDetails.sproc.sql /tmp/getOrderAndDetails.sproc.sql
RUN yum repolist --disablerepo=* && \
    yum-config-manager --disable \* > /dev/null && \
    yum-config-manager --enable rhel-7-server-rpms > /dev/null && \
    curl https://packages.microsoft.com/config/rhel/7/mssql-server.repo > /etc/yum.repos.d/mssql-server.repo && \
    curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/msprod.repo && \
    yum -y install sudo && \
    yum -y update
RUN /bin/bash /tmp/mssql-setup.sh

# Adding this will expose mssql on a random host port. It's recommended to avoid this. Other containers on the same 
# host can use the service without it.
EXPOSE 1433
ENTRYPOINT ["/opt/mssql/bin/sqlservr"]

