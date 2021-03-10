FROM alpine:latest

RUN apk --update --no-cache add curl ca-certificates
RUN apk add php php-fpm php-mcrypt php-soap php-openssl php-gmp php-pdo_odbc php-json php-dom php-pdo php-zip php-mysqli php-sqlite3 php-apcu php-pdo_pgsql php-bcmath php-gd php-odbc php-pdo_mysql php-pdo_sqlite php-gettext php-xmlreader php-xmlrpc php-bz2 php-iconv php-pdo_dblib php-curl php-ctype php-phar php-fileinfo php-mbstring php-tokenizer

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]