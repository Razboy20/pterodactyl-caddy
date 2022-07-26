FROM alpine:latest

RUN apk --update --no-cache add curl ca-certificates
RUN apk add php7 php7-fpm php7-mcrypt php7-soap php7-openssl php7-session php7-exif php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xml php7-simplexml php7-xmlwriter php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype php7-phar php7-fileinfo php7-mbstring php7-tokenizer php7-intl php7-posix php7-opcache php7-pecl-imagick --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]

#RUN setcap 'cap_net_bind_service=+ep' /home/container/caddy-server
