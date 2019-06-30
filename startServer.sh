#!/bin/bash

# app config
SERVER_PORT="-Dserver.port=8080"

# clickhouse config
CK_IP="localhost"
CK_PORT="8123"
CK_USERNAME="default"
CK_PASSWORD="xxxx"
DB_SERVER_URL="-Dclickhouse.jdbc.url=jdbc:clickhouse://${CK_IP}:${CK_PORT}/default -Dclickhouse.username=${CK_USERNAME} -Dclickhouse.password=${CK_PASSWORD}"

# info、debug、error、warn、trane
LOG_LEVEL="-Dlogging.level.org.springframework.web=debug"
LOG_FILE="-Dlogging.file=./my.log"

# jar name
JAR_FILE="demo-0.1.1-SNAPSHOT.jar"

# start
java ${SERVER_PORT} ${LOG_LEVEL}  ${DB_SERVER_URL} ${LOG_FILE} -jar ${JAR_FILE} &
