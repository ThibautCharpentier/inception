#!/bin/sh

if [ ! -f ./wp-config.php ]
then
	wget https://wordpress.org/wordpress-6.2.tar.gz
	tar xfz wordpress-6.2.tar.gz
	mv wordpress/* .
	rm -rf wordpress-6.2.tar.gz
	rm -rf wordpress
	sed -i "s/username_here/$MYSQL_USER/g" wp-config-sample.php
	sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config-sample.php
	sed -i "s/localhost/$MYSQL_HOSTNAME/g" wp-config-sample.php
	sed -i "s/database_name_here/$MYSQL_DATABASE/g" wp-config-sample.php
	mv wp-config-sample.php wp-config.php
fi
exec "$@"
