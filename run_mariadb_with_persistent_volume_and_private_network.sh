#!/bin/bash
docker container run -d \
--name wordpressdb \
-e MYSQL_ROOT_PASSWORD='redhat' \
-e MYSQL_DATABASE='wordpress' \
-e MYSQL_USER='wordpress' \
-e MYSQL_PASSWORD='redhat' \
-v /root/var/lib/mysql:/var/lib/mysql \
--network mariadb-wp-privnet \
mariadb
