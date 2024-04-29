FROM debian:buster

RUN apt-get update && apt-get -y upgrade && apt-get -y install \
	wget php7.3 php-mysql php-fpm

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./tools/create_wordpress.sh /usr/local/bin/

RUN mkdir -p /run/php
RUN chmod +x /usr/local/bin/create_wordpress.sh

WORKDIR /var/www/html/

ENTRYPOINT ["create_wordpress.sh"]

CMD ["/usr/sbin/php-fpm7.3", "-F"]
