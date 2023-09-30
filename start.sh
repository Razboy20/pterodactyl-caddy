#!/bin/ash

echo "Formatting Caddyfile..."
./caddy-server fmt --overwrite ./caddy/Caddyfile

echo "Starting PHP-FPM..."
PHP_FPM=$(find /usr/sbin -name "php-fpm*" -type f | tail -n 1)
$PHP_FPM --fpm-config /home/container/php-fpm/php-fpm.conf -c /home/container/php-fpm/ --daemonize

echo "Starting Caddy..."
./caddy-server run --watch --config ./caddy/Caddyfile
