#!/usr/bin/env bash

mysql -P 3306 -u root --password=${MYSQL_ROOT_PASSWORD} -e "create user if not exists '${MYSQL_USER}'@'localhost' identified by '${MYSQL_USER_PASSWORD}';"
exit $?
