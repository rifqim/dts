#!/bin/bash
podman container run -d \
--name wordpress \
-e WORDPRESS_DB_HOST=wordpressdb \
-e WORDPRESS_DB_USER='wordpress' \
-e WORDPRESS_DB_PASSWORD='redhat' \
-e WORDPRESS_DB_NAME='wordpress' \
-v /root/var/www/html:/var/www/html \
--network mariadb-wp-privnet \
-p 80:80 \
wordpress
