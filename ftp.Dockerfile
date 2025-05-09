FROM debian:latest

RUN apt-get update && \
    apt-get install -y vsftpd

RUN mkdir -p /var/run/vsftpd/empty && \
    mkdir -p /home/publico && \
    chown ftp:ftp /home/publico && \
    chmod 755 /home/publico

# Crear el archivo de configuración vsftpd.conf
COPY vol/samba/vsftpd.conf /etc/vsftpd/vsftpd.conf

# Exponer el puerto FTP
EXPOSE 21

# Comando para iniciar vsftpd
CMD ["/usr/sbin/vsftpd", "/etc/vsftpd/vsftpd.conf"]