FROM php:7.4-apache

RUN <<EOF
apt update
apt install -y libpq-dev
docker-php-ext-install pdo pdo_mysql
EOF

CMD docker-php-entrypoint apache2-foreground
