FROM debian:latest

RUN <<EOF
apt update
apt install -y rsync
touch /etc/rsyncd.conf
EOF

CMD rsync --daemon --no-detach
