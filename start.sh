#!/bin/ash

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm7 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Caddy..."
./caddy-server run --watch --config ./caddy/Caddyfile