# rhel7mssql
## A RHEL 7 based Microsoft SQL Server for Linux container build

Dockerfile - this is the control file to generate the docker image for the mssql container.

mssql-setup.sh - this is the script that gets copied into the container during build to install and configure mssql-server

mssql-testdb.sh - this is the script that gets copied into the container during build to configure the testdb and schema and load some trivial data


## How to use:

1) Copy the attached files to a suitable directory on your host.
2) Ensure that you have valid subscriptions and docker is installed and the docker daemon is running
3) run the following command with root privilege from the directory where you installed the above files. Note that there is a trailing dot!

```sudo docker build -t "rhel7mssql:0.1" -t "rhel7mssql:latest" .```

This will build your new container image. If you have any errors, please let me know. It should download and/or pull everything that it needs from the internet.

4) When the build is complete, run the container with the command.

```sudo docker run --name mssql_linux -d rhel7mssql:latest```

5) When the container is running, get the address

```sudo docker inspect mssql_linux | grep IPAddress```

The output should look something like:

            "SecondaryIPAddresses": null,
            "IPAddress": "172.17.0.2",
                    "IPAddress": "172.17.0.2",

6) now you can query the database...

```
sudo curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/mssql-tools.repo
sudo ACCEPT_EULA=Y yum install mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
/opt/mssql-tools/bin/sqlcmd -S 172.17.0.2 -U sa -P RedHat2017 -Q "USE testdb; EXEC getOrderAndDetails 1"
```



Sample Data gets loaded into testdb by default as well as a couple of stored procedures to generate orders and get a the data for particular order number.

### To add a new order to the environment with random data, run:
```/opt/mssql-tools/bin/sqlcmd -S 172.17.0.2 -U sa -P RedHat2017 -d testdb "EXEC generateOrder"```

This will return the orderid.

### To view a given order, run
```/opt/mssql-tools/bin/sqlcmd -S 172.17.0.2 -U sa -P RedHat2017 -d testdb "EXEC getOrderAndDetails <OrderID/>"```

