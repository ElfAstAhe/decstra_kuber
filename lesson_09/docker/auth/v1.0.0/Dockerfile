FROM payara/server-full:5.201

# all env variables in payara/server-full:5.2020.2 docker file:
# docker image at: https://hub.docker.com/r/payara/server-full
# docker file at: https://github.com/payara/docker-payaraserver-full

# switch to payara system user
USER payara

# set work folder
WORKDIR ${HOME_DIR}

# copy database drivers to payara lib folder
#COPY docker-resources/postgresql-42.2.8.jar ${PAYARA_DIR}/glassfish/lib/
#COPY docker-resources/postgresql-42.2.8-features.xml ${PAYARA_DIR}/glassfish/lib/
RUN wget --no-verbose -O ${PAYARA_DIR}/glassfish/lib/postgresql-42.2.12.jar https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.12/postgresql-42.2.12.jar && \
    wget --no-verbose -O ${PAYARA_DIR}/glassfish/lib/postgresql-42.2.12-features.xml https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.12/postgresql-42.2.12-features.xml

# run asadmin command line tool
# start app server
# create jdbc connection pool
# create jdbc resource
# stop app server
RUN ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} start-domain ${DOMAIN_NAME} && \
    ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jdbc-connection-pool --datasourceclassname org.postgresql.ds.PGSimpleDataSource --restype javax.sql.DataSource --isolationlevel read-committed --maxpoolsize 64 --property DriverClass=org.postgresql.Driver:TargetServerType=any:BinaryTransfer=true:UnknownLength=2147483647:DisableColumnSanitiser=false:StringType=Unspecified:UseSpNego=false:SspiServiceClass=POSTGRES:ProtocolVersion=0:SendBufferSize=-1:ReceiveBufferSize=-1:LoadBalanceHosts=false:ReadOnly=false:LogUnclosedConnections=false:DatabaseName=decstra.auth:CleanupSavepoints=false:GssLib=false:CancelSignalTimeout=10:CurrentSchema=public:PortNumber=5432:DefaultRowFetchSize=0:User=decstra:DatabaseMetadataCacheFieldsMiB=5:RecvBufferSize=-1:AllowEncodingChanges=false:JaasLogin=true:PrepareThreshold=5:ReWriteBatchedInserts=false:SocketTimeout=0:HostRecheckSeconds=10:Password=12345:ConnectTimeout=10:ApplicationName=auth:PreparedStatementCacheQueries=256:Ssl=false:PreparedStatementCacheSizeMiB=5:LoginTimeout=0:ServerName=postgres-auth:DatabaseMetadataCacheFields=65536:TcpKeepAlive=false pool/decstra.auth && \
    ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jdbc-resource --connectionpoolid pool/decstra.auth jdbc/auth && \
    ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} stop-domain ${DOMAIN_NAME}

# copy app to app server deploy dir
COPY target/auth-1.0.0.war $DEPLOY_DIR
