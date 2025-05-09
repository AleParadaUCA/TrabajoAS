# FROM fauria/vsftpd
# Sobrescribir la configuración original con la personalizada
# COPY vol/samba/vsftpd.conf /etc/vsftpd/vsftpd.conf

FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y vsftpd

RUN mkdir -p /var/run/vsftpd/empty
RUN mkdir -p /etc/vsftpd && \
    touch /etc/vsftpd/vsftpd.conf


COPY vol/samba/vsftpd.conf /etc/vsftpd/vsftpd.conf


CMD ["/usr/sbin/vsftpd"]