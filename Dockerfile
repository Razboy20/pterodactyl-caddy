FROM alpine:latest

RUN apk --update --no-cache add curl ca-certificates
RUN apk add php7.4 php7.4-fpm php7.4-mcrypt php7.4-soap php7.4-openssl php7.4-gmp php7.4-pdo_odbc php7.4-json php7.4-dom php7.4-pdo php7.4-zip php7.4-mysqli php7.4-sqlite3 php7.4-apcu php7.4-pdo_pgsql php7.4-bcmath php7.4-gd php7.4-odbc php7.4-pdo_mysql php7.4-pdo_sqlite php7.4-gettext php7.4-xmlreader php7.4-xmlrpc php7.4-bz2 php7.4-iconv php7.4-pdo_dblib php7.4-curl php7.4-ctype php7.4-phar php7.4-fileinfo php7.4-mbstring php7.4-tokenizer

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]