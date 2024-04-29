FROM debian:buster

RUN apt-get update && apt-get -y upgrade && apt-get install -y nginx openssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/tcharpen.crt \
	-keyout /etc/nginx/ssl/tcharpen.key \
	-subj "/C=FR/ST=Lyon/L=Lyon/O=42 School/OU=tcharpen/CN=tcharpen.42.fr"

COPY ./conf/nginx.conf /etc/nginx/conf.d

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
