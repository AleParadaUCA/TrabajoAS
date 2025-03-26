FROM php:8.2-fpm

RUN <<EOF
apt-get update
apt-get install -y libpq-dev
docker-php-ext-install pdo pdo_pgsql
EOF

CMD docker-php-entrypoint php-fpm
