FROM httpd:latest

# Copiar archivo de configuración de Apache
COPY ./vol/apache/httpd.conf /usr/local/apache2/conf/httpd.conf

COPY ./vol/apache/index.html /usr/local/apache2/htdocs/index.html

# Crear directorio para autenticación y agregar usuario
RUN mkdir -p /usr/local/apache2/conf/auth && \
    htpasswd -cb /usr/local/apache2/conf/auth/.htpasswd documentos a