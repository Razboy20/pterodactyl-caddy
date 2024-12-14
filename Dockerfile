FROM alpine:latest

RUN apk --update --no-cache add curl ca-certificates
RUN apk add php84 php84-fpm php84-soap php84-openssl php84-session php84-exif php84-gmp php84-pdo_odbc php84-dom php84-pdo php84-zip php84-mysqli php84-sqlite3 php84-apcu php84-pdo_pgsql php84-bcmath php84-gd php84-odbc php84-pdo_mysql php84-pdo_sqlite php84-gettext php84-xml php84-simplexml php84-xmlwriter php84-xmlreader php84-bz2 php84-iconv php84-pdo_dblib php84-curl php84-ctype php84-phar php84-fileinfo php84-mbstring php84-tokenizer php84-intl php84-posix php84-opcache php84-pecl-imagick

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]

#RUN setcap 'cap_net_bind_service=+ep' /home/container/caddy-server
