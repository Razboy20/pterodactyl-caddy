FROM alpine:latest

RUN apk --update --no-cache add curl ca-certificates
RUN apk add php82 php82-fpm php82-soap php82-openssl php82-session php82-exif php82-gmp php82-pdo_odbc php82-dom php82-pdo php82-zip php82-mysqli php82-sqlite3 php82-apcu php82-pdo_pgsql php82-bcmath php82-gd php82-odbc php82-pdo_mysql php82-pdo_sqlite php82-gettext php82-xml php82-simplexml php82-xmlwriter php82-xmlreader php82-bz2 php82-iconv php82-pdo_dblib php82-curl php82-ctype php82-phar php82-fileinfo php82-mbstring php82-tokenizer php82-intl php82-posix php82-opcache php82-pecl-imagick
# not available in php8.2: php82-pecl-mcrypt

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]

#RUN setcap 'cap_net_bind_service=+ep' /home/container/caddy-server
