FROM alpine:latest

RUN apk --update --no-cache add curl ca-certificates
RUN apk add php83 php83-fpm php83-soap php83-openssl php83-session php83-exif php83-gmp php83-pdo_odbc php83-dom php83-pdo php83-zip php83-mysqli php83-sqlite3 php83-apcu php83-pdo_pgsql php83-bcmath php83-gd php83-odbc php83-pdo_mysql php83-pdo_sqlite php83-gettext php83-xml php83-simplexml php83-xmlwriter php83-xmlreader php83-bz2 php83-iconv php83-pdo_dblib php83-curl php83-ctype php83-phar php83-fileinfo php83-mbstring php83-tokenizer php83-intl php83-posix php83-opcache php83-pecl-imagick
# not available in php8.2: php82-pecl-mcrypt

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]

#RUN setcap 'cap_net_bind_service=+ep' /home/container/caddy-server
