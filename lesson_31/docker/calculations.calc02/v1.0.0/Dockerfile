FROM payara/server-full:5.201

# all env variables in payara/server-full:5.201 docker file:
# docker image at: https://hub.docker.com/r/payara/server-full
# docker file at: https://github.com/payara/docker-payaraserver-full

ENV DATA_SOURCE_NAME="jdbc/calculations.calc02"\
    POOL_NAME="pool/decstra.calculations.calc02"\
    DATABASE_NAME="decstra.calculations.calc02"\
    DATABASE_SCHEMA="public"\
    DATABASE_USER="decstra"\
    DATABASE_PASSWORD="12345"\
    DATABASE_APP_NAME="calculations.calc02"\
    DB_SERVER="postgres-calculations-calc02"\
    DB_PORT="5432"\
    APP_NAME="calculations.calc02-1.0.0.war"\
    POSTGRES_JDBC_VERSION="42.2.12"

# switch to payara system user
USER payara

# set work folder
WORKDIR ${HOME_DIR}

# copy database drivers to payara lib folder
#COPY docker-resources/postgresql-42.2.8.jar ${PAYARA_DIR}/glassfish/lib/
#COPY docker-resources/postgresql-42.2.8-features.xml ${PAYARA_DIR}/glassfish/lib/
RUN wget --no-verbose -O ${PAYARA_DIR}/glassfish/lib/postgresql-${POSTGRES_JDBC_VERSION}.jar https://repo1.maven.org/maven2/org/postgresql/postgresql/${POSTGRES_JDBC_VERSION}/postgresql-${POSTGRES_JDBC_VERSION}.jar && \
    wget --no-verbose -O ${PAYARA_DIR}/glassfish/lib/postgresql-${POSTGRES_JDBC_VERSION}-features.xml https://repo1.maven.org/maven2/org/postgresql/postgresql/${POSTGRES_JDBC_VERSION}/postgresql-${POSTGRES_JDBC_VERSION}-features.xml

# run asadmin command line tool
# start app server
# create jdbc connection pool
# create jdbc resource
# stop app server
RUN ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} start-domain ${DOMAIN_NAME} && \
    ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jdbc-connection-pool --datasourceclassname org.postgresql.ds.PGSimpleDataSource --restype javax.sql.DataSource --isolationlevel read-committed --maxpoolsize 64 --property DriverClass=org.postgresql.Driver:TargetServerType=any:BinaryTransfer=true:UnknownLength=2147483647:DisableColumnSanitiser=false:StringType=Unspecified:UseSpNego=false:SspiServiceClass=POSTGRES:ProtocolVersion=0:SendBufferSize=-1:ReceiveBufferSize=-1:LoadBalanceHosts=false:ReadOnly=false:LogUnclosedConnections=false:DatabaseName=${DATABASE_NAME}:CleanupSavepoints=false:GssLib=false:CancelSignalTimeout=10:CurrentSchema=${DATABASE_SCHEMA}:PortNumber=${DB_PORT}:DefaultRowFetchSize=0:User=${DATABASE_USER}:DatabaseMetadataCacheFieldsMiB=5:RecvBufferSize=-1:AllowEncodingChanges=false:JaasLogin=true:PrepareThreshold=5:ReWriteBatchedInserts=false:SocketTimeout=0:HostRecheckSeconds=10:Password=${DATABASE_PASSWORD}:ConnectTimeout=10:ApplicationName=${DATABASE_APP_NAME}:PreparedStatementCacheQueries=256:Ssl=false:PreparedStatementCacheSizeMiB=5:LoginTimeout=0:ServerName=${DB_SERVER}:DatabaseMetadataCacheFields=65536:TcpKeepAlive=false ${POOL_NAME} && \
    ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jdbc-resource --connectionpoolid ${POOL_NAME} ${DATA_SOURCE_NAME} && \
    ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} stop-domain ${DOMAIN_NAME}

# copy app to app server deploy dir
COPY target/${APP_NAME} $DEPLOY_DIR
