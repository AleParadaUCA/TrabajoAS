FROM debian:latest

ADD --chmod=644 dailyjob /etc/cron.d/

RUN <<EOF
apt update
apt install -y rsync default-mysql-client postgresql-client cron
crontab /etc/cron.d/dailyjob
EOF

CMD cron -f
